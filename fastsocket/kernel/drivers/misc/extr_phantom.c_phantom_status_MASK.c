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
struct phantom_device {unsigned long status; scalar_t__ caddr; scalar_t__ iaddr; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 unsigned long PHB_RUNNING ; 
 scalar_t__ PHN_CONTROL ; 
 int PHN_CTL_IRQ ; 
 scalar_t__ PHN_IRQCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct phantom_device *dev, unsigned long newstat)
{
	FUNC3("phantom_status %lx %lx\n", dev->status, newstat);

	if (!(dev->status & PHB_RUNNING) && (newstat & PHB_RUNNING)) {
		FUNC0(&dev->counter, 0);
		FUNC2(PHN_CTL_IRQ, dev->iaddr + PHN_CONTROL);
		FUNC2(0x43, dev->caddr + PHN_IRQCTL);
		FUNC1(dev->caddr + PHN_IRQCTL); /* PCI posting */
	} else if ((dev->status & PHB_RUNNING) && !(newstat & PHB_RUNNING)) {
		FUNC2(0, dev->caddr + PHN_IRQCTL);
		FUNC1(dev->caddr + PHN_IRQCTL); /* PCI posting */
	}

	dev->status = newstat;

	return 0;
}