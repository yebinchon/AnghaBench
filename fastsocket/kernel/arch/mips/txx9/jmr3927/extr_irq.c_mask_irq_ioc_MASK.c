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
 int /*<<< orphan*/  JMR3927_IOC_INTM_ADDR ; 
 int /*<<< orphan*/  JMR3927_IOC_REV_ADDR ; 
 unsigned int JMR3927_IRQ_IOC ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	/* 0: mask */
	unsigned int irq_nr = irq - JMR3927_IRQ_IOC;
	unsigned char imask = FUNC0(JMR3927_IOC_INTM_ADDR);
	unsigned int bit = 1 << irq_nr;
	FUNC1(imask & ~bit, JMR3927_IOC_INTM_ADDR);
	/* flush write buffer */
	(void)FUNC0(JMR3927_IOC_REV_ADDR);
}