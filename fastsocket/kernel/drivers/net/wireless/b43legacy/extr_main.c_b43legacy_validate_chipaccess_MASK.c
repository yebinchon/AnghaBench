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
typedef  int u32 ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int B43legacy_MACCTL_GMODE ; 
 int B43legacy_MACCTL_IHR_ENABLED ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int ENODEV ; 
 int FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct b43legacy_wldev *dev)
{
	u32 value;
	u32 shm_backup;

	shm_backup = FUNC1(dev, B43legacy_SHM_SHARED, 0);
	FUNC2(dev, B43legacy_SHM_SHARED, 0, 0xAA5555AA);
	if (FUNC1(dev, B43legacy_SHM_SHARED, 0) !=
				 0xAA5555AA)
		goto error;
	FUNC2(dev, B43legacy_SHM_SHARED, 0, 0x55AAAA55);
	if (FUNC1(dev, B43legacy_SHM_SHARED, 0) !=
				 0x55AAAA55)
		goto error;
	FUNC2(dev, B43legacy_SHM_SHARED, 0, shm_backup);

	value = FUNC0(dev, B43legacy_MMIO_MACCTL);
	if ((value | B43legacy_MACCTL_GMODE) !=
	    (B43legacy_MACCTL_GMODE | B43legacy_MACCTL_IHR_ENABLED))
		goto error;

	value = FUNC0(dev, B43legacy_MMIO_GEN_IRQ_REASON);
	if (value)
		goto error;

	return 0;
error:
	FUNC3(dev->wl, "Failed to validate the chipaccess\n");
	return -ENODEV;
}