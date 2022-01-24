#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct worker_data {int cpu_id; } ;
struct TYPE_4__ {struct conn_context* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct context_pool {int dummy; } ;
struct conn_context {int fd; int cpu_id; int ep_fd; int events; int flags; int end_fd; int /*<<< orphan*/  (* handler ) (struct conn_context*) ;} ;
struct TYPE_6__ {int listen_fd; } ;
struct TYPE_5__ {int polls_min; int polls_max; int polls_sum; int polls_cnt; int polls_avg; int polls_lst; int /*<<< orphan*/  polls_mpt; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int EVENTS_PER_BATCH ; 
 int /*<<< orphan*/  MAX_CONNS_PER_WORKER ; 
 int PROXY_BACKEND_EVENT ; 
 struct conn_context* FUNC0 (struct context_pool*) ; 
 int FUNC1 (int) ; 
 scalar_t__ enable_keepalive ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int FUNC4 (int,struct epoll_event*,int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  http_200 ; 
 int /*<<< orphan*/  http_200_keepalive ; 
 int /*<<< orphan*/  http_response ; 
 int /*<<< orphan*/  http_response_len ; 
 struct context_pool* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* la ; 
 int la_num ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct conn_context*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct conn_context*) ; 
 TYPE_2__* wdata ; 

void *FUNC12(void *arg)
{
	int ret;
	struct worker_data *mydata = (struct worker_data *)arg;
	struct context_pool *pool;

	struct epoll_event evt;
	struct epoll_event evts[EVENTS_PER_BATCH];

	int cpu_id;
	int ep_fd;
	int i;

	struct conn_context *ctx;

	if (enable_keepalive)
		http_response = http_200_keepalive;
	else
		http_response = http_200;

	http_response_len = FUNC10(http_response);

	ret = FUNC1(mydata->cpu_id);
	if (ret < 0) {
		FUNC7("Unable to Bind worker on CPU");
		FUNC5();
	}

	pool = FUNC6(MAX_CONNS_PER_WORKER);

	if ((ep_fd = FUNC2(MAX_CONNS_PER_WORKER)) < 0) {
		FUNC7("Unable to create epoll FD");
		FUNC5();
	}

	for (i = 0; i < la_num; i++) {
		ctx = FUNC0(pool);

		ctx->fd = la[i].listen_fd;
		ctx->handler = process_accept;
		cpu_id = mydata->cpu_id;
		ctx->cpu_id = cpu_id;
		ctx->ep_fd = ep_fd;

		evt.events = EPOLLIN | EPOLLHUP | EPOLLERR;
		evt.data.ptr = ctx;

		if (FUNC3(ctx->ep_fd, EPOLL_CTL_ADD, ctx->fd, &evt) < 0) {
			FUNC7("Unable to add Listen Socket to epoll");
			FUNC5();
		}
	}

	wdata[cpu_id].polls_min = EVENTS_PER_BATCH;

	while (1) {
		int num_events;
		int i;
		int events;

		num_events = FUNC4(ep_fd, evts, EVENTS_PER_BATCH, -1);
		if (num_events < 0) {
			if (errno == EINTR)
				continue;
			FUNC7("epoll_wait() error");
		}
		if (!num_events)
			wdata[cpu_id].polls_mpt++;
		else if (num_events < wdata[cpu_id].polls_min)
			wdata[cpu_id].polls_min = num_events;
		if (num_events > wdata[cpu_id].polls_max)
			wdata[cpu_id].polls_max = num_events;

		wdata[cpu_id].polls_sum += num_events;
		wdata[cpu_id].polls_cnt++;
		wdata[cpu_id].polls_avg = wdata[cpu_id].polls_sum / wdata[cpu_id].polls_cnt;
		wdata[cpu_id].polls_lst = num_events;

		for (i = 0 ; i < num_events; i++) {
			int active_fd;

			events = evts[i].events;
			ctx = evts[i].data.ptr;
			ctx->events = events;

			if (ctx->flags & PROXY_BACKEND_EVENT)
				active_fd = ctx->end_fd;
			else
				active_fd = ctx->fd;

			FUNC8("%dth event[0x%x] at fd %d\n", i, events, active_fd);

			ctx->handler(ctx);
		}
	}
	return NULL;
}