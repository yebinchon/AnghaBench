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
struct b43_wldev {int /*<<< orphan*/  wl; int /*<<< orphan*/  qos_enabled; } ;

/* Variables and functions */
 int B43_HF_EDCF ; 
 int /*<<< orphan*/  B43_MMIO_IFSCTL ; 
 int B43_MMIO_IFSCTL_USE_EDCF ; 
 int FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev)
{
	if (!dev->qos_enabled) {
		/* Disable QOS support. */
		FUNC1(dev, FUNC0(dev) & ~B43_HF_EDCF);
		FUNC4(dev, B43_MMIO_IFSCTL,
			    FUNC3(dev, B43_MMIO_IFSCTL)
			    & ~B43_MMIO_IFSCTL_USE_EDCF);
		FUNC5(dev->wl, "QoS disabled\n");
		return;
	}

	/* Upload the current QOS parameters. */
	FUNC2(dev);

	/* Enable QOS support. */
	FUNC1(dev, FUNC0(dev) | B43_HF_EDCF);
	FUNC4(dev, B43_MMIO_IFSCTL,
		    FUNC3(dev, B43_MMIO_IFSCTL)
		    | B43_MMIO_IFSCTL_USE_EDCF);
	FUNC5(dev->wl, "QoS enabled\n");
}