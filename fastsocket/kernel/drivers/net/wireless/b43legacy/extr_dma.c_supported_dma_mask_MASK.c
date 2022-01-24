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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int B43legacy_DMA32_TXADDREXT_MASK ; 
 scalar_t__ B43legacy_DMA32_TXCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43legacy_wldev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,scalar_t__,int) ; 

__attribute__((used)) static u64 FUNC4(struct b43legacy_wldev *dev)
{
	u32 tmp;
	u16 mmio_base;

	mmio_base = FUNC1(0, 0);
	FUNC3(dev,
			mmio_base + B43legacy_DMA32_TXCTL,
			B43legacy_DMA32_TXADDREXT_MASK);
	tmp = FUNC2(dev, mmio_base +
			       B43legacy_DMA32_TXCTL);
	if (tmp & B43legacy_DMA32_TXADDREXT_MASK)
		return FUNC0(32);

	return FUNC0(30);
}