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
typedef  int /*<<< orphan*/  u32 ;
struct ssb_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct b43_wldev {TYPE_1__ phy; TYPE_2__* dev; } ;
struct TYPE_4__ {struct ssb_device* sdev; } ;

/* Variables and functions */
 scalar_t__ B43_PHYTYPE_N ; 
 int /*<<< orphan*/  B43_TMSLOW_GMODE ; 
 int /*<<< orphan*/  B43_TMSLOW_PHYCLKEN ; 
 int /*<<< orphan*/  B43_TMSLOW_PHYRESET ; 
 int /*<<< orphan*/  B43_TMSLOW_PHY_BANDWIDTH_20MHZ ; 
 int /*<<< orphan*/  SSB_TMSLOW ; 
 int /*<<< orphan*/  SSB_TMSLOW_FGC ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev, bool gmode)
{
	struct ssb_device *sdev = dev->dev->sdev;
	u32 tmslow;
	u32 flags = 0;

	if (gmode)
		flags |= B43_TMSLOW_GMODE;
	flags |= B43_TMSLOW_PHYCLKEN;
	flags |= B43_TMSLOW_PHYRESET;
	if (dev->phy.type == B43_PHYTYPE_N)
		flags |= B43_TMSLOW_PHY_BANDWIDTH_20MHZ; /* Make 20 MHz def */
	FUNC0(dev, flags);
	FUNC1(2);		/* Wait for the PLL to turn on. */

	/* Now take the PHY out of Reset again */
	tmslow = FUNC2(sdev, SSB_TMSLOW);
	tmslow |= SSB_TMSLOW_FGC;
	tmslow &= ~B43_TMSLOW_PHYRESET;
	FUNC3(sdev, SSB_TMSLOW, tmslow);
	FUNC2(sdev, SSB_TMSLOW);	/* flush */
	FUNC1(1);
	tmslow &= ~SSB_TMSLOW_FGC;
	FUNC3(sdev, SSB_TMSLOW, tmslow);
	FUNC2(sdev, SSB_TMSLOW);	/* flush */
	FUNC1(1);
}