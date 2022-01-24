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
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct pt_regs *regs,
	unsigned long addr, unsigned int size)
{
	unsigned long page = addr & PAGE_MASK;
	unsigned long next_addr = addr + size - 1;
	unsigned long next_page = next_addr & PAGE_MASK;

	if (FUNC1(page == next_page)) {
		FUNC0(regs, addr, size);
		return;
	}

	/* See comment in kmemcheck_read(). */
	FUNC0(regs, addr, next_page - addr);
	FUNC0(regs, next_page, next_addr - next_page);
}