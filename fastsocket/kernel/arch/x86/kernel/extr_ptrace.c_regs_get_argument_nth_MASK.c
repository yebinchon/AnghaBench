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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int* arg_offs_table ; 
 unsigned long FUNC1 (struct pt_regs*,int) ; 

unsigned long FUNC2(struct pt_regs *regs, unsigned int n)
{
	if (n < FUNC0(arg_offs_table))
		return *(unsigned long *)((char *)regs + arg_offs_table[n]);
	else {
		/*
		 * The typical case: arg n is on the stack.
		 * (Note: stack[0] = return address, so skip it)
		 */
		n -= FUNC0(arg_offs_table);
		return FUNC1(regs, 1 + n);
	}
}