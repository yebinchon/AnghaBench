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
typedef  struct net_device* u32 ;
struct ns83820 {scalar_t__ base; scalar_t__ ihr; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ISR ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct net_device*) ; 
 struct net_device* FUNC3 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int foo, void *data)
{
	struct net_device *ndev = data;
	struct ns83820 *dev = FUNC0(ndev);
	u32 isr;
	FUNC1("ns83820_irq(%p)\n", ndev);

	dev->ihr = 0;

	isr = FUNC3(dev->base + ISR);
	FUNC1("irq: %08x\n", isr);
	FUNC2(ndev, isr);
	return IRQ_HANDLED;
}