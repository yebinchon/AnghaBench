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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t
FUNC1(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;

	/*
	 * very simple loop because we get interrupts only when receiving
	 */
	while (FUNC0(dev));
	return IRQ_HANDLED;
}