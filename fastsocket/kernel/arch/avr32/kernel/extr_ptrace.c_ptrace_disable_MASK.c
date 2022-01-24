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

/* Variables and functions */
 int /*<<< orphan*/  TIF_BREAKPOINT ; 
 int /*<<< orphan*/  TIF_SINGLE_STEP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

void FUNC2(struct task_struct *child)
{
	FUNC0(child, TIF_SINGLE_STEP);
	FUNC0(child, TIF_BREAKPOINT);
	FUNC1(child);
}