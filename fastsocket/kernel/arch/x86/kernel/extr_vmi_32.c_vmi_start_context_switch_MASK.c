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
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_lazy_mode ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ vmi_ops ; 

__attribute__((used)) static void FUNC2(struct task_struct *prev)
{
	FUNC0(prev);
	vmi_ops.set_lazy_mode(2);
}