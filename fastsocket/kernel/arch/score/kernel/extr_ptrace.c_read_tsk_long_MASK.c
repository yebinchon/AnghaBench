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
 int EIO ; 
 int FUNC0 (struct task_struct*,unsigned long,unsigned long*,int,int /*<<< orphan*/ ) ; 

int
FUNC1(struct task_struct *child,
		unsigned long addr, unsigned long *res)
{
	int copied;

	copied = FUNC0(child, addr, res, sizeof(*res), 0);

	return copied != sizeof(*res) ? -EIO : 0;
}