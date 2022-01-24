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
typedef  int /*<<< orphan*/  uint16_t ;
struct rlimit {void* rlim_max; void* rlim_cur; } ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  listen_fd; int /*<<< orphan*/  param_port; struct in_addr listenip; } ;

/* Variables and functions */
 void* MAX_CONNS_PER_WORKER ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 void* RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr,int /*<<< orphan*/ ) ; 
 TYPE_1__* la ; 
 int la_num ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 

void FUNC6(void)
{
	int ret, i;
	struct rlimit limits;

	for (i = 0; i < la_num; i++){
		struct in_addr ip;
		uint16_t port;

		ip = la[i].listenip;
		port = la[i].param_port;

		la[i].listen_fd = FUNC2(ip, port);
	}

	limits.rlim_cur = RLIM_INFINITY;
	limits.rlim_max = RLIM_INFINITY;

	ret = FUNC5(RLIMIT_CORE, &limits);
	if (ret < 0) {
		FUNC3("Set core limit failed");
		FUNC0();
	}

	FUNC1(RLIMIT_CORE, &limits);
	FUNC4("Core limit %ld %ld\n", limits.rlim_cur, limits.rlim_max);

	limits.rlim_cur = MAX_CONNS_PER_WORKER;
	limits.rlim_max = MAX_CONNS_PER_WORKER;

	ret = FUNC5(RLIMIT_NOFILE, &limits);
	if (ret < 0) {
		FUNC3("Set open file limit failed");
		FUNC0();
	}

	FUNC1(RLIMIT_NOFILE, &limits);
	FUNC4("Open file limit %ld %ld\n", limits.rlim_cur, limits.rlim_max);
}