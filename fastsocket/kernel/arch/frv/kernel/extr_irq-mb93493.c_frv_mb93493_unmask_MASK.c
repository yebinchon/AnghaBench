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
typedef  int uint32_t ;

/* Variables and functions */
 unsigned int IRQ_BASE_MB93493 ; 
 int IRQ_ROUTING ; 
 void* FUNC0 (int) ; 
 int FUNC1 (void volatile*) ; 
 int /*<<< orphan*/  FUNC2 (int,void volatile*) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	uint32_t iqsr;
	volatile void *piqsr;

	if (IRQ_ROUTING & (1 << (irq - IRQ_BASE_MB93493)))
		piqsr = FUNC0(1);
	else
		piqsr = FUNC0(0);

	iqsr = FUNC1(piqsr);
	iqsr |= 1 << (irq - IRQ_BASE_MB93493 + 16);
	FUNC2(iqsr, piqsr);
}