#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int istat0; int imask0; int vmeistat; int cmeimask0; } ;

/* Variables and functions */
 int SGINT_ISTAT0_LIO2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* lc0msk_to_irqnr ; 
 int* lc2msk_to_irqnr ; 
 TYPE_1__* sgint ; 

__attribute__((used)) static void FUNC1(void)
{
	u8 mask = sgint->istat0 & sgint->imask0;
	u8 mask2;
	int irq;

	if (mask & SGINT_ISTAT0_LIO2) {
		mask2 = sgint->vmeistat & sgint->cmeimask0;
		irq = lc2msk_to_irqnr[mask2];
	} else
		irq = lc0msk_to_irqnr[mask];

	/* if irq == 0, then the interrupt has already been cleared */
	if (irq)
		FUNC0(irq);
}