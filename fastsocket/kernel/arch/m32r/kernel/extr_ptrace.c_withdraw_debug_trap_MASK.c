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
struct pt_regs {int bpc; } ;
typedef  int /*<<< orphan*/  code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long*,int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 

void
FUNC3(struct pt_regs *regs)
{
	unsigned long addr;
	unsigned long code;

 	addr = (regs->bpc - 2) & ~3;
	regs->bpc -= 2;
	if (FUNC2(current, addr, &code)) {
	    FUNC0(current, addr, &code, sizeof(code), 1);
	    FUNC1();
	}
}