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
 unsigned int HD64461_IRQBASE ; 
 int /*<<< orphan*/  HD64461_PCC1CSCR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	FUNC1(irq);
#ifdef CONFIG_HD64461_ENABLER
	if (irq == HD64461_IRQBASE + 13)
		__raw_writeb(0x00, HD64461_PCC1CSCR);
#endif
}