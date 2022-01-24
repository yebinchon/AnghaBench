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
typedef  int u8 ;
typedef  int u16 ;
struct b43legacy_wldev {struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int /*<<< orphan*/  leds_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_GPIO_CONTROL ; 
 int FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct b43legacy_wldev *dev, u8 led_index,
			    bool activelow)
{
	struct b43legacy_wl *wl = dev->wl;
	unsigned long flags;
	u16 ctl;

	FUNC2(&wl->leds_lock, flags);
	ctl = FUNC0(dev, B43legacy_MMIO_GPIO_CONTROL);
	if (activelow)
		ctl &= ~(1 << led_index);
	else
		ctl |= (1 << led_index);
	FUNC1(dev, B43legacy_MMIO_GPIO_CONTROL, ctl);
	FUNC3(&wl->leds_lock, flags);
}