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
 scalar_t__ INTCP_VA_SIC_BASE ; 
 scalar_t__ IRQ_ENABLE_CLEAR ; 
 scalar_t__ IRQ_SIC_START ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(unsigned int irq)
{
	irq -= IRQ_SIC_START;
	FUNC0(1 << irq, INTCP_VA_SIC_BASE + IRQ_ENABLE_CLEAR);
}