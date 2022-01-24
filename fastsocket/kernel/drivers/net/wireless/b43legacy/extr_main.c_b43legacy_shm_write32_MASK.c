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
typedef  scalar_t__ u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_SHM_DATA ; 
 int /*<<< orphan*/  B43legacy_MMIO_SHM_DATA_UNALIGNED ; 
 scalar_t__ B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct b43legacy_wldev *dev,
			   u16 routing, u16 offset,
			   u32 value)
{
	if (routing == B43legacy_SHM_SHARED) {
		FUNC0((offset & 0x0001) != 0);
		if (offset & 0x0003) {
			/* Unaligned access */
			FUNC1(dev, routing, offset >> 2);
			FUNC4();
			FUNC2(dev,
					  B43legacy_MMIO_SHM_DATA_UNALIGNED,
					  (value >> 16) & 0xffff);
			FUNC4();
			FUNC1(dev, routing,
						   (offset >> 2) + 1);
			FUNC4();
			FUNC2(dev, B43legacy_MMIO_SHM_DATA,
					  value & 0xffff);
			return;
		}
		offset >>= 2;
	}
	FUNC1(dev, routing, offset);
	FUNC4();
	FUNC3(dev, B43legacy_MMIO_SHM_DATA, value);
}