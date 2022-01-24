#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct unw_frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct unw_frame_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct unw_frame_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct unw_frame_info*,unsigned long*) ; 
 scalar_t__ FUNC6 (struct unw_frame_info*) ; 

void
FUNC7 (struct unw_frame_info *info, void *arg)
{
	unsigned long ip, sp, bsp;
	char buf[128];			/* don't make it so big that it overflows the stack! */

	FUNC1("\nCall Trace:\n");
	do {
		FUNC4(info, &ip);
		if (ip == 0)
			break;

		FUNC5(info, &sp);
		FUNC3(info, &bsp);
		FUNC2(buf, sizeof(buf),
			 " [<%016lx>] %%s\n"
			 "                                sp=%016lx bsp=%016lx\n",
			 ip, sp, bsp);
		FUNC0(buf, ip);
	} while (FUNC6(info) >= 0);
}