
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct linger {int member_0; int member_1; } ;
struct TYPE_3__ {struct conn_context* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct conn_context {char* buf; int events; int cpu_id; int ep_fd; int fd; int data_len; int end_fd; int end_fd_added; int flags; int handler; } ;
typedef int ling ;
struct TYPE_4__ {int read_cnt; } ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLOUT ;
 int EPOLL_CTL_ADD ;
 int EPOLL_CTL_MOD ;
 int F_GETFL ;
 int F_SETFL ;
 int MAX_BUFSIZE ;
 int O_NONBLOCK ;
 int PROXY_BACKEND_EVENT ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_LINGER ;
 int connect (int,struct sockaddr*,int) ;
 int epoll_ctl (int,int ,int,struct epoll_event*) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int free_context (struct conn_context*) ;
 int perror (char*) ;
 int print_d (char*,int,...) ;
 int printf (char*) ;
 int process_close (struct conn_context*) ;
 int process_write_backend ;
 int read (int,char*,int ) ;
 int select_backend (struct sockaddr_in*) ;
 int setsockopt (int,int ,int ,void*,int) ;
 int socket (int ,int ,int ) ;
 TYPE_2__* wdata ;

__attribute__((used)) static void process_read_frontend(struct conn_context *ctx)
{
 int ep_fd, front_fd, end_fd;
 char *buf = ctx->buf;
 int events = ctx->events;
 struct epoll_event evt;
 struct sockaddr_in addr_in;
 int ret;
 int cpu_id = ctx->cpu_id;

 ep_fd = ctx->ep_fd;
 front_fd = ctx->fd;


 if (events & (EPOLLHUP | EPOLLERR)) {
  printf("process_read_frontend() with events HUP or ERR\n");
  goto free_back;
 }

 print_d("Process read event[%02x] on front-end socket %d\n", events, front_fd);

 ret = read(front_fd, buf, MAX_BUFSIZE);
 if (ret < 0)
 {
  wdata[cpu_id].read_cnt++;
  perror("process_read_frontend() can't read client socket");
  goto free_back;
 }

 ctx->data_len = ret;

 print_d("Read %d from front-end socket %d\n", ret, front_fd);


 evt.events = EPOLLHUP | EPOLLERR;
 evt.data.ptr = ctx;

 ret = epoll_ctl(ep_fd, EPOLL_CTL_MOD, front_fd, &evt);
 if (ret < 0) {
  perror("Unable to add client socket read event to epoll");
  goto free_back;
 }

 int flags;

 ret = socket(AF_INET, SOCK_STREAM, 0);
 if (ret < 0) {
  perror("Unable to create new socket for backend");
  goto free_back;
 }

 end_fd = ret;
 ctx->end_fd = end_fd;

 print_d("Create socket %d\n", ret);

 flags = fcntl(ret, F_GETFL, 0);
 flags |= O_NONBLOCK;
 fcntl(ret, F_SETFL, flags);

 struct linger ling = {1, 0};

 ret = setsockopt(end_fd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));
 if (ret < 0) {
  perror("Unable to set socket linger option");
  goto free_back;
 }

 select_backend(&addr_in);

 ret = connect(end_fd, (struct sockaddr *)&addr_in, sizeof(struct sockaddr));
 if (ret < 0) {
  if (errno != EINPROGRESS) {
   perror("Unable to connect to back end server");
   goto free_back;
  }
 }

 ctx->handler = process_write_backend;
 ctx->flags |= PROXY_BACKEND_EVENT;

 evt.events = EPOLLOUT | EPOLLHUP | EPOLLERR;
 evt.data.ptr = ctx;

 ret = epoll_ctl(ep_fd, EPOLL_CTL_ADD, end_fd, &evt);
 if (ret < 0) {
  perror("Unable to add client socket read event to epoll");
  goto free_back;
 }

 ctx->end_fd_added = 1;

 print_d("Add back-end socket %d to epoll\n", end_fd);

 goto back;

free_back:

 print_d("cpu[%d] close socket %d\n", cpu_id, ctx->fd);

 process_close(ctx);
 free_context(ctx);

back:
 return;
}
