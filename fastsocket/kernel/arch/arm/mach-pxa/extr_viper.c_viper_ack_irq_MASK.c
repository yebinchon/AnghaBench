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
 int VIPER_HI_IRQ_STATUS ; 
 int VIPER_LO_IRQ_STATUS ; 
 int FUNC0 (unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned int irq)
{
	int viper_irq = FUNC0(irq);

	if (viper_irq & 0xff)
		VIPER_LO_IRQ_STATUS = viper_irq;
	else
		VIPER_HI_IRQ_STATUS = (viper_irq >> 8);
}