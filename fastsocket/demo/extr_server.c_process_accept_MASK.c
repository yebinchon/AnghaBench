#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct conn_context* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct context_pool {int dummy; } ;
struct conn_context {int events; int cpu_id; int fd; int fd_added; int /*<<< orphan*/  ep_fd; int /*<<< orphan*/  handler; struct context_pool* pool; } ;
struct TYPE_4__ {int /*<<< orphan*/  accept_cnt; } ;

/* Variables and functions */
 int ACCEPT_PER_LISTEN_EVENT ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct conn_context* FUNC1 (struct context_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct conn_context*) ; 
 scalar_t__ enable_proxy ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct conn_context*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct conn_context*) ; 
 int /*<<< orphan*/  process_read ; 
 int /*<<< orphan*/  process_read_frontend ; 
 TYPE_2__* wdata ; 

__attribute__((used)) static void FUNC9(struct conn_context * listen_ctx)
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

	//TODO: What else should I do.
	if (events & (EPOLLHUP | EPOLLERR))
		return;

	for (i = 0; i < ACCEPT_PER_LISTEN_EVENT; i++) {
		int flags;

		client_fd = FUNC0(listen_fd, NULL, NULL);
		if (client_fd < 0) {
			wdata[cpu_id].accept_cnt++;
			goto back;
		}

		flags = FUNC4(client_fd, F_GETFL, 0);
		flags |= O_NONBLOCK;
		FUNC4(client_fd, F_SETFL, flags);

		FUNC7("Accept socket %d from %d\n", client_fd, listen_fd);
	}

	pool = listen_ctx->pool;
	client_ctx = FUNC1(pool);
	FUNC2(client_ctx);

	client_ctx->fd = client_fd;

	if (enable_proxy)
		client_ctx->handler = process_read_frontend;
	else
		client_ctx->handler = process_read;

	client_ctx->cpu_id = listen_ctx->cpu_id;
	client_ctx->ep_fd = listen_ctx->ep_fd;

	evt.events = EPOLLIN | EPOLLHUP | EPOLLERR;
	evt.data.ptr = client_ctx;

	ret = FUNC3(client_ctx->ep_fd, EPOLL_CTL_ADD, client_ctx->fd, &evt);
	if (ret < 0) {
		FUNC6("Unable to add client socket read event to epoll");
		goto free_back;
	}

	client_ctx->fd_added = 1;

	goto back;

free_back:

	FUNC7("cpu[%d] close socket %d\n", cpu_id, client_ctx->fd);

	FUNC8(client_ctx);
	FUNC5(client_ctx);
back:
	return;
}