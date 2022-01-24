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
 unsigned int GFER ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int GPIO_IRQ_falling_edge ; 
 unsigned int GPIO_IRQ_mask ; 
 unsigned int GPIO_IRQ_rising_edge ; 
 unsigned int GRER ; 

__attribute__((used)) static void FUNC1(unsigned int irq)
{
	unsigned int mask = FUNC0(irq);

	GPIO_IRQ_mask |= mask;

	GRER = GPIO_IRQ_rising_edge & GPIO_IRQ_mask;
	GFER = GPIO_IRQ_falling_edge & GPIO_IRQ_mask;
}