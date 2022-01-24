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
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_RADIO_CONTROL ; 
 int /*<<< orphan*/  B43_MMIO_RADIO_DATA_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u16 FUNC3(struct b43_wldev *dev, u16 reg)
{
	/* Register 1 is a 32-bit register. */
	FUNC0(reg == 1);
	/* N-PHY needs 0x100 for read access */
	reg |= 0x100;

	FUNC2(dev, B43_MMIO_RADIO_CONTROL, reg);
	return FUNC1(dev, B43_MMIO_RADIO_DATA_LOW);
}