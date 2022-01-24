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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_RSSI ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct b43_wldev *dev) /* RSSI lookup table */
{
	int i;

	if (0 /* FIXME: For APHY.rev=2 this might be needed */) {
		for (i = 0; i < 8; i++)
			FUNC0(dev, B43_OFDMTAB_RSSI, i, i + 8);
		for (i = 8; i < 16; i++)
			FUNC0(dev, B43_OFDMTAB_RSSI, i, i - 8);
	} else {
		for (i = 0; i < 64; i++)
			FUNC0(dev, B43_OFDMTAB_RSSI, i, i);
	}
}