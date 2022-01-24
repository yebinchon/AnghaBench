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
struct conn_context {int cpu_id; int fd; char* buf; int data_len; int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  trancnt; } ;

/* Variables and functions */
 int PROXY_BACKEND_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct conn_context*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct conn_context*) ; 
 TYPE_1__* wdata ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(struct conn_context *ctx)
{
	int front_fd;
	char *buf;
	int data_len;
	int cpu_id;
	int ret;

	cpu_id = ctx->cpu_id;
	front_fd = ctx->fd;
	buf = ctx->buf;
	data_len = ctx->data_len;

	if (ctx->flags & PROXY_BACKEND_EVENT) {
		FUNC3("Write to front end socket while back end socket enabled\n");
		goto free_back;
	}

	ret = FUNC5(front_fd, buf, data_len);
	if (ret < 0) {
		FUNC1("Can't write front-end socket");
		goto free_back;
	}

	FUNC2("Write %d to front end socket %d\n", data_len, front_fd);

	wdata[cpu_id].trancnt++;

free_back:

	FUNC4(ctx);
	FUNC0(ctx);

	return;
}