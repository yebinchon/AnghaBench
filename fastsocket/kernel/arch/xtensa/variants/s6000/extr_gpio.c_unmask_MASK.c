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
typedef  int u8 ;

/* Variables and functions */
 unsigned int IRQ_BASE ; 
 scalar_t__ S6_GPIO_IE ; 
 scalar_t__ S6_REG_GPIO ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	u8 m = FUNC0(S6_REG_GPIO + S6_GPIO_IE);
	m |= 1 << (irq - IRQ_BASE);
	FUNC1(m, S6_REG_GPIO + S6_GPIO_IE);
}