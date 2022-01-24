#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int rev; } ;
struct b43_wldev {TYPE_2__ phy; TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ board_vendor; scalar_t__ board_type; int board_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_DC ; 
 int /*<<< orphan*/  B43_OFDMTAB_UNKNOWN_APHY ; 
 scalar_t__ SSB_BOARDVENDOR_BCM ; 
 scalar_t__ SSB_BOARD_BU4306 ; 
 scalar_t__ SSB_BOARD_MP4318 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	if (dev->dev->board_vendor == SSB_BOARDVENDOR_BCM &&
	    dev->dev->board_type == SSB_BOARD_BU4306 &&
	    dev->dev->board_rev < 0x30) {
		FUNC1(dev, 0x0010, 0xE000);
		FUNC1(dev, 0x0013, 0x0140);
		FUNC1(dev, 0x0014, 0x0280);
	} else {
		if (dev->dev->board_type == SSB_BOARD_MP4318 &&
		    dev->dev->board_rev < 0x20) {
			FUNC1(dev, 0x0013, 0x0210);
			FUNC1(dev, 0x0014, 0x0840);
		} else {
			FUNC1(dev, 0x0013, 0x0140);
			FUNC1(dev, 0x0014, 0x0280);
		}
		if (dev->phy.rev <= 4)
			FUNC1(dev, 0x0010, 0xE000);
		else
			FUNC1(dev, 0x0010, 0x2000);
		FUNC0(dev, B43_OFDMTAB_DC, 1, 0x0039);
		FUNC0(dev, B43_OFDMTAB_UNKNOWN_APHY, 7, 0x0040);
	}
}