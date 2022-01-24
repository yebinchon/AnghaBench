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
struct task_struct {int dummy; } ;
struct ia64_psr {scalar_t__ tb; scalar_t__ ss; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct ia64_psr* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

void
FUNC3 (struct task_struct *child)
{
	struct ia64_psr *child_psr = FUNC1(FUNC2(child));

	/* make sure the single step/taken-branch trap bits are not set: */
	FUNC0(child, TIF_SINGLESTEP);
	child_psr->ss = 0;
	child_psr->tb = 0;
}