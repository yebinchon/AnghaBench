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
typedef  scalar_t__ u8 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct b43legacy_wldev*) ; 

__attribute__((used)) static inline
u8 FUNC1(struct b43legacy_wldev *dev, u8 firmware_kidx)
{
	u8 raw_kidx;
	if (FUNC0(dev))
		raw_kidx = firmware_kidx;
	else
		/* RX default keys or per STA keys */
		raw_kidx = firmware_kidx + 4;
	return raw_kidx;
}