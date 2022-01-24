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
typedef  int /*<<< orphan*/  uint16_t ;
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ETHERNET_IRQ ; 
 int /*<<< orphan*/  MMACINTREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(uint16_t mask)
{
	struct irq_desc *desc = irq_desc + ETHERNET_IRQ;
	unsigned long flags;

	FUNC1(&desc->lock, flags);
	FUNC0(MMACINTREG, mask);
	FUNC2(&desc->lock, flags);
}