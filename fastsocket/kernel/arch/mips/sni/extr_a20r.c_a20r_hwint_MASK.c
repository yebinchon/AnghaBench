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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  IE_IRQ0 ; 
 scalar_t__ SNI_A20R_IRQ_BASE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	u32 cause, status;
	int irq;

	FUNC1(IE_IRQ0);
	status = FUNC0();
	cause = FUNC5();

	irq = FUNC3(((cause & status) >> 8) & 0xf8);
	if (FUNC4(irq > 0))
		FUNC2(SNI_A20R_IRQ_BASE + irq - 1);
	FUNC6(IE_IRQ0);
}