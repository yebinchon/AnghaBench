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
struct of_irq {int /*<<< orphan*/  size; int /*<<< orphan*/  specifier; int /*<<< orphan*/  controller; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int NO_IRQ ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,int,struct of_irq*) ; 

unsigned int FUNC2(struct device_node *dev, int index)
{
	struct of_irq oirq;

	if (FUNC1(dev, index, &oirq))
		return NO_IRQ;

	return FUNC0(oirq.controller, oirq.specifier,
				     oirq.size);
}