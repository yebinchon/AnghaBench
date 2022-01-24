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
 int EBUSY ; 
 unsigned int EXT_IRQ0 ; 
 unsigned int EXT_IRQ15 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  H8300_GPIO_INPUT ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ ISR ; 

int FUNC3(unsigned int irq)
{
	if (irq >= EXT_IRQ0 && irq <= EXT_IRQ15) {
		unsigned short ptn = 1 << (irq - EXT_IRQ0);
		unsigned int port_no,bit_no;
		FUNC2(ptn, irq, port_no, bit_no);
		if (FUNC1(port_no, bit_no) == 0)
			return -EBUSY;                   /* pin already use */
		FUNC0(port_no, bit_no, H8300_GPIO_INPUT);
		*(volatile unsigned short *)ISR &= ~ptn; /* ISR clear */
	}

	return 0;
}