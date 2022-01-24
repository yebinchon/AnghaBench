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
struct conn_context {int events; int cpu_id; int ep_fd; int fd; int /*<<< orphan*/  handler; } ;
struct TYPE_4__ {int /*<<< orphan*/  trancnt; int /*<<< orphan*/  write_cnt; } ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_MOD ; 
 int /*<<< orphan*/  enable_keepalive ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_context*) ; 
 int /*<<< orphan*/  http_response ; 
 int /*<<< orphan*/  http_response_len ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct conn_context*) ; 
 int /*<<< orphan*/  process_read ; 
 TYPE_2__* wdata ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct conn_context *client_ctx)
{
	int ep_fd, fd;
	int events = client_ctx->events;
	int cpu_id = client_ctx->cpu_id;
	int ret;
	struct epoll_event evt;

	ep_fd = client_ctx->ep_fd;
	fd = client_ctx->fd;

	FUNC3("Process write event[%02x]\n", events);

	if (events & (EPOLLHUP | EPOLLERR)) {
		FUNC4("process_write() with events HUP or ERR\n");
		goto free_back;
	}

	ret = FUNC6(fd, http_response, http_response_len);
	if (ret < 0) {
		wdata[cpu_id].write_cnt++;
		FUNC2("process_write() can't write client socket");
		goto free_back;
	}

	FUNC3("Write %d to socket %d\n", ret, fd);

	wdata[cpu_id].trancnt++;

	if (!enable_keepalive)
		goto free_back;

	client_ctx->handler = process_read;

	evt.events = EPOLLIN | EPOLLHUP | EPOLLERR;
	evt.data.ptr = client_ctx;

	ret = FUNC0(ep_fd, EPOLL_CTL_MOD, fd, &evt);
	if (ret < 0) {
		FUNC2("Unable to add client socket read event to epoll");
		goto free_back;
	}

	goto back;

free_back:

	FUNC5(client_ctx);
	FUNC1(client_ctx);
back:

	return;
}