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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct b43legacy_wldev {int /*<<< orphan*/  wl; } ;
typedef  enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;

/* Variables and functions */
 scalar_t__ B43legacy_DMA32_TXCTL ; 
 int /*<<< orphan*/  B43legacy_DMA32_TXSTATE ; 
 scalar_t__ B43legacy_DMA32_TXSTATUS ; 
 int /*<<< orphan*/  B43legacy_DMA32_TXSTAT_DISABLED ; 
 int /*<<< orphan*/  B43legacy_DMA32_TXSTAT_IDLEWAIT ; 
 int /*<<< orphan*/  B43legacy_DMA32_TXSTAT_STOPPED ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct b43legacy_wldev *dev,
					    u16 mmio_base,
					    enum b43legacy_dmatype type)
{
	int i;
	u32 value;
	u16 offset;

	FUNC3();

	for (i = 0; i < 10; i++) {
		offset = B43legacy_DMA32_TXSTATUS;
		value = FUNC0(dev, mmio_base + offset);
		value &= B43legacy_DMA32_TXSTATE;
		if (value == B43legacy_DMA32_TXSTAT_DISABLED ||
		    value == B43legacy_DMA32_TXSTAT_IDLEWAIT ||
		    value == B43legacy_DMA32_TXSTAT_STOPPED)
			break;
		FUNC4(1);
	}
	offset = B43legacy_DMA32_TXCTL;
	FUNC1(dev, mmio_base + offset, 0);
	for (i = 0; i < 10; i++) {
		offset = B43legacy_DMA32_TXSTATUS;
		value = FUNC0(dev, mmio_base + offset);
		value &= B43legacy_DMA32_TXSTATE;
		if (value == B43legacy_DMA32_TXSTAT_DISABLED) {
			i = -1;
			break;
		}
		FUNC4(1);
	}
	if (i != -1) {
		FUNC2(dev->wl, "DMA TX reset timed out\n");
		return -ENODEV;
	}
	/* ensure the reset is completed. */
	FUNC4(1);

	return 0;
}