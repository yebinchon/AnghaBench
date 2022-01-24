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

/* Variables and functions */
 int /*<<< orphan*/  BM_ICOLL_INTERRUPTn_ENABLE ; 
 scalar_t__ HW_ICOLL_INTERRUPTn ; 
 scalar_t__ REGS_ICOLL_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(unsigned int irq)
{
	/* IRQ enable */
	FUNC0(BM_ICOLL_INTERRUPTn_ENABLE,
		      REGS_ICOLL_BASE + HW_ICOLL_INTERRUPTn + irq * 0x10);
}