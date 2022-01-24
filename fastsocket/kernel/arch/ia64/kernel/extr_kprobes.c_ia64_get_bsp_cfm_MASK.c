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
struct param_bsp_cfm {unsigned long ip; scalar_t__ cfm; int /*<<< orphan*/ * bsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unw_frame_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct unw_frame_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct unw_frame_info*,unsigned long*) ; 
 scalar_t__ FUNC3 (struct unw_frame_info*) ; 

__attribute__((used)) static void FUNC4(struct unw_frame_info *info, void *arg)
{
	unsigned long ip;
	struct param_bsp_cfm *lp = arg;

	do {
		FUNC2(info, &ip);
		if (ip == 0)
			break;
		if (ip == lp->ip) {
			FUNC0(info, (unsigned long*)&lp->bsp);
			FUNC1(info, (unsigned long*)&lp->cfm);
			return;
		}
	} while (FUNC3(info) >= 0);
	lp->bsp = NULL;
	lp->cfm = 0;
	return;
}