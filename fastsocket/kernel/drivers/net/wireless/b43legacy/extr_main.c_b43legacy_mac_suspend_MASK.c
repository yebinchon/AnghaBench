#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct b43legacy_wldev {scalar_t__ mac_suspended; TYPE_1__* wl; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int B43legacy_IRQ_MAC_SUSPENDED ; 
 int B43legacy_MACCTL_ENABLED ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct b43legacy_wldev *dev)
{
	int i;
	u32 tmp;

	FUNC7();
	FUNC0(FUNC6());
	FUNC0(dev->mac_suspended < 0);

	if (dev->mac_suspended == 0) {
		/* Mask IRQs before suspending MAC. Otherwise
		 * the MAC stays busy and won't suspend. */
		FUNC9(&dev->wl->irq_lock);
		FUNC4(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
		FUNC10(&dev->wl->irq_lock);
		FUNC3(dev);

		FUNC1(dev, -1, 1);
		FUNC4(dev, B43legacy_MMIO_MACCTL,
				  FUNC2(dev,
				  B43legacy_MMIO_MACCTL)
				  & ~B43legacy_MACCTL_ENABLED);
		FUNC2(dev, B43legacy_MMIO_GEN_IRQ_REASON);
		for (i = 40; i; i--) {
			tmp = FUNC2(dev,
					       B43legacy_MMIO_GEN_IRQ_REASON);
			if (tmp & B43legacy_IRQ_MAC_SUSPENDED)
				goto out;
			FUNC8(1);
		}
		FUNC5(dev->wl, "MAC suspend failed\n");
	}
out:
	dev->mac_suspended++;
}