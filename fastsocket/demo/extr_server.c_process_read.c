
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct conn_context* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct conn_context {int events; char* buf; int cpu_id; int ep_fd; int fd; int data_len; int handler; } ;
struct TYPE_4__ {int read_cnt; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLOUT ;
 int EPOLL_CTL_MOD ;
 int MAX_BUFSIZE ;
 int epoll_ctl (int,int ,int,struct epoll_event*) ;
 int free_context (struct conn_context*) ;
 int perror (char*) ;
 int print_d (char*,...) ;
 int process_close (struct conn_context*) ;
 int process_write ;
 int read (int,char*,int ) ;
 TYPE_2__* wdata ;

__attribute__((used)) static void process_read(struct conn_context *client_ctx)
{
 int ep_fd, fd;
 int events = client_ctx->events;
 struct epoll_event evt;
 int ret;
 char *buf = client_ctx->buf;
 int cpu_id = client_ctx->cpu_id;

 ep_fd = client_ctx->ep_fd;
 fd = client_ctx->fd;


 if (events & EPOLLHUP) {
  print_d("process_read() with events HUP\n");
  goto free_back;
 }
 if (events & EPOLLERR) {
  print_d("process_read() with events ERR\n");
  goto free_back;
 }

 print_d("Process read event[%02x] on socket %d\n", events, fd);

 ret = read(fd, buf, MAX_BUFSIZE);
 if (ret < 0) {
  wdata[cpu_id].read_cnt++;
  perror("process_read() can't read client socket");
  goto free_back;
 } else if (ret == 0) {
  goto free_back;
  print_d("Socket %d is closed\n", fd);
 }

 client_ctx->data_len = ret;

 print_d("Read %d from socket %d\n", ret, fd);

 client_ctx->handler = process_write;

 evt.events = EPOLLOUT | EPOLLHUP | EPOLLERR;
 evt.data.ptr = client_ctx;

 ret = epoll_ctl(ep_fd, EPOLL_CTL_MOD, fd, &evt);
 if (ret < 0) {
  perror("Unable to add client socket read event to epoll");
  goto free_back;
 }

 goto back;


free_back:

 print_d("cpu[%d] close socket %d\n", cpu_id, client_ctx->fd);

 process_close(client_ctx);
 free_context(client_ctx);

back:
 return;
}
