#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct conn_context* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct conn_context {int events; int ep_fd; int end_fd; char* buf; int data_len; int flags; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_MOD ; 
 int PROXY_BACKEND_EVENT ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_context*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct conn_context*) ; 
 int /*<<< orphan*/  process_read_backend ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(struct conn_context *ctx)
{
	int ep_fd, end_fd;
	int events = ctx->events;
	char *buf;
	int data_len;
	int ret;

	ep_fd = ctx->ep_fd;
	end_fd = ctx->end_fd;
	buf = ctx->buf;
	data_len = ctx->data_len;

	FUNC3("Process write event[%02x] on back-end socket %d\n", events, end_fd);

	if (events & (EPOLLHUP | EPOLLERR)) {
		FUNC4("process_write_backend() with events HUP or ERR 0x%x\n", events);
		goto free_back;
	}

	struct epoll_event evt;

	if (!(ctx->flags & PROXY_BACKEND_EVENT))
	{
		FUNC4("Write to back-end socket while back end socket not enabled\n");
		goto free_back;
	}

	ret = FUNC6(end_fd, buf, data_len);
	if (ret < 0) {
		FUNC2("process_write() can't write back end socket");
		goto free_back;
	}

	FUNC3("Write %d to back-end socket %d\n", ret, end_fd);

	ctx->handler = process_read_backend;
	ctx->flags |= PROXY_BACKEND_EVENT;

	evt.events = EPOLLIN | EPOLLHUP | EPOLLERR;
	evt.data.ptr = ctx;

	ret = FUNC0(ep_fd, EPOLL_CTL_MOD, end_fd, &evt);
	if (ret < 0) {
		FUNC2("Unable to add client socket read event to epoll");
		goto free_back;
	}

	goto back;

free_back:

	FUNC5(ctx);
	FUNC1(ctx);

back:

	return;
}