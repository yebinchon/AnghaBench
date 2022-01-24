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
struct TYPE_3__ {unsigned long usersp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_4__ {unsigned long sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_IA32 ; 
 TYPE_2__* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 

unsigned long FUNC2(struct task_struct *task)
{
	return (FUNC1(task, TIF_IA32)) ?
			(FUNC0(task)->sp) : ((task)->thread.usersp);
}