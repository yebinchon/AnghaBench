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
 int /*<<< orphan*/  INTMR2 ; 
#define  IRQ_KBDINT 128 
 int /*<<< orphan*/  KBDEOI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	u32 intmr2;

	intmr2 = FUNC0(INTMR2);
	intmr2 &= ~(1 << (irq - 16));
	FUNC1(intmr2, INTMR2);

	switch (irq) {
	case IRQ_KBDINT: FUNC1(0, KBDEOI); break;
	}
}