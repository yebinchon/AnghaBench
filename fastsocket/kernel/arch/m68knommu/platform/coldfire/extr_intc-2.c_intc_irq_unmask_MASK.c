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
 scalar_t__ MCFICM_INTC0 ; 
 scalar_t__ MCFICM_INTC1 ; 
 unsigned long MCFINTC_ICR0 ; 
 unsigned long MCFINTC_IMRH ; 
 unsigned long MCFINTC_IMRL ; 
 unsigned int MCFINT_VECBASE ; 
 unsigned long MCF_IPSBAR ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  intc_intpri ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	if ((irq >= MCFINT_VECBASE) && (irq <= MCFINT_VECBASE + 128)) {
		unsigned long intaddr, imraddr, icraddr;
		u32 val, imrbit;

		irq -= MCFINT_VECBASE;
		intaddr = MCF_IPSBAR;
		intaddr += (irq & 0x40) ? MCFICM_INTC1 : MCFICM_INTC0;
		imraddr = intaddr + ((irq & 0x20) ? MCFINTC_IMRH : MCFINTC_IMRL);
		icraddr = intaddr + MCFINTC_ICR0 + (irq & 0x3f);
		imrbit = 0x1 << (irq & 0x1f);

		/* Don't set the "maskall" bit! */
		if ((irq & 0x20) == 0)
			imrbit |= 0x1;

		if (FUNC0(icraddr) == 0)
			FUNC2(intc_intpri--, icraddr);

		val = FUNC1(imraddr);
		FUNC3(val & ~imrbit, imraddr);
	}
}