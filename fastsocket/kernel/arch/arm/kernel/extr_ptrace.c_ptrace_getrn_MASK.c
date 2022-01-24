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
 unsigned long FUNC0 (struct task_struct*,unsigned int) ; 

__attribute__((used)) static unsigned long
FUNC1(struct task_struct *child, unsigned long insn)
{
	unsigned int reg = (insn >> 16) & 15;
	unsigned long val;

	val = FUNC0(child, reg);
	if (reg == 15)
		val += 8;

	return val;
}