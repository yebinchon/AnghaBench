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
typedef  int u32 ;
struct task_struct {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC ; 
 int OCD_DC_DBE_BIT ; 
 int OCD_DC_MM_BIT ; 
 int /*<<< orphan*/  TIF_DEBUG ; 
 int /*<<< orphan*/  ocd_count ; 
 int /*<<< orphan*/  ocd_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 

void FUNC6(struct task_struct *child)
{
	u32 dc;

	if (child)
		FUNC2("ocd_enable: child=%s [%u]\n",
				child->comm, child->pid);
	else
		FUNC2("ocd_enable (no child)\n");

	if (!child || !FUNC5(child, TIF_DEBUG)) {
		FUNC3(&ocd_lock);
		ocd_count++;
		dc = FUNC0(DC);
		dc |= (1 << OCD_DC_MM_BIT) | (1 << OCD_DC_DBE_BIT);
		FUNC1(DC, dc);
		FUNC4(&ocd_lock);
	}
}