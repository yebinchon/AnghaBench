
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct conn_context* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct context_pool {int dummy; } ;
struct conn_context {int events; int cpu_id; int fd; int fd_added; int ep_fd; int handler; struct context_pool* pool; } ;
struct TYPE_4__ {int accept_cnt; } ;


 int ACCEPT_PER_LISTEN_EVENT ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int accept (int,int *,int *) ;
 struct conn_context* alloc_context (struct context_pool*) ;
 int assert (struct conn_context*) ;
 scalar_t__ enable_proxy ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int fcntl (int,int ,int) ;
 int free_context (struct conn_context*) ;
 int perror (char*) ;
 int print_d (char*,int,int) ;
 int process_close (struct conn_context*) ;
 int process_read ;
 int process_read_frontend ;
 TYPE_2__* wdata ;

__attribute__((used)) static void process_accept(struct conn_context * listen_ctx)
{
 int client_fd, listen_fd;
 int events = listen_ctx->events;
 struct epoll_event evt;

 struct context_pool *pool;
 struct conn_context *client_ctx;

 int cpu_id = listen_ctx->cpu_id;
 int ret = 0;
 int i;

 listen_fd = listen_ctx->fd;


 if (events & (EPOLLHUP | EPOLLERR))
  return;

 for (i = 0; i < ACCEPT_PER_LISTEN_EVENT; i++) {
  int flags;

  client_fd = accept(listen_fd, ((void*)0), ((void*)0));
  if (client_fd < 0) {
   wdata[cpu_id].accept_cnt++;
   goto back;
  }

  flags = fcntl(client_fd, F_GETFL, 0);
  flags |= O_NONBLOCK;
  fcntl(client_fd, F_SETFL, flags);

  print_d("Accept socket %d from %d\n", client_fd, listen_fd);
 }

 pool = listen_ctx->pool;
 client_ctx = alloc_context(pool);
 assert(client_ctx);

 client_ctx->fd = client_fd;

 if (enable_proxy)
  client_ctx->handler = process_read_frontend;
 else
  client_ctx->handler = process_read;

 client_ctx->cpu_id = listen_ctx->cpu_id;
 client_ctx->ep_fd = listen_ctx->ep_fd;

 evt.events = EPOLLIN | EPOLLHUP | EPOLLERR;
 evt.data.ptr = client_ctx;

 ret = epoll_ctl(client_ctx->ep_fd, EPOLL_CTL_ADD, client_ctx->fd, &evt);
 if (ret < 0) {
  perror("Unable to add client socket read event to epoll");
  goto free_back;
 }

 client_ctx->fd_added = 1;

 goto back;

free_back:

 print_d("cpu[%d] close socket %d\n", cpu_id, client_ctx->fd);

 process_close(client_ctx);
 free_context(client_ctx);
back:
 return;
}
