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
typedef  unsigned int u8 ;

/* Variables and functions */
 scalar_t__ PCIMT_IRQSEL ; 
 unsigned int PCIMT_IRQ_INT2 ; 

__attribute__((used)) static void FUNC0(unsigned int irq)
{
	unsigned int mask = 1 << (irq - PCIMT_IRQ_INT2);

	*(volatile u8 *) PCIMT_IRQSEL |= mask;
}