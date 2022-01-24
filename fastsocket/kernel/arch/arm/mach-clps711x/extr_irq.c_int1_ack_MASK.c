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
 int /*<<< orphan*/  COEOI ; 
 int /*<<< orphan*/  INTMR1 ; 
#define  IRQ_CSINT 133 
#define  IRQ_RTCMI 132 
#define  IRQ_TC1OI 131 
#define  IRQ_TC2OI 130 
#define  IRQ_TINT 129 
#define  IRQ_UMSINT 128 
 int /*<<< orphan*/  RTCEOI ; 
 int /*<<< orphan*/  TC1EOI ; 
 int /*<<< orphan*/  TC2EOI ; 
 int /*<<< orphan*/  TEOI ; 
 int /*<<< orphan*/  UMSEOI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	u32 intmr1;

	intmr1 = FUNC0(INTMR1);
	intmr1 &= ~(1 << irq);
	FUNC1(intmr1, INTMR1);

	switch (irq) {
	case IRQ_CSINT:  FUNC1(0, COEOI);  break;
	case IRQ_TC1OI:  FUNC1(0, TC1EOI); break;
	case IRQ_TC2OI:  FUNC1(0, TC2EOI); break;
	case IRQ_RTCMI:  FUNC1(0, RTCEOI); break;
	case IRQ_TINT:   FUNC1(0, TEOI);   break;
	case IRQ_UMSINT: FUNC1(0, UMSEOI); break;
	}
}