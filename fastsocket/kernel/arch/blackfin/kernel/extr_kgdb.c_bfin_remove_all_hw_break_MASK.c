#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hw_breakpoint {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int HW_INST_WATCHPOINT_NUM ; 
 int HW_WATCHPOINT_NUM ; 
 int /*<<< orphan*/  TYPE_DATA_WATCHPOINT ; 
 int /*<<< orphan*/  TYPE_INST_WATCHPOINT ; 
 TYPE_1__* breakinfo ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC1(void)
{
	int breakno;

	FUNC0(breakinfo, 0, sizeof(struct hw_breakpoint)*HW_WATCHPOINT_NUM);

	for (breakno = 0; breakno < HW_INST_WATCHPOINT_NUM; breakno++)
		breakinfo[breakno].type = TYPE_INST_WATCHPOINT;
	for (; breakno < HW_WATCHPOINT_NUM; breakno++)
		breakinfo[breakno].type = TYPE_DATA_WATCHPOINT;
}