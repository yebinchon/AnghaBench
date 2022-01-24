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
typedef  int uint16_t ;

/* Variables and functions */
 unsigned int IRQ_BASE_FPGA ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	uint16_t imr = FUNC0();

	imr |= 1 << (irq - IRQ_BASE_FPGA);

	FUNC1(imr);
}