#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_7__ {int crystalfreq; } ;
struct TYPE_8__ {TYPE_3__ pmu; } ;
struct ssb_bus {TYPE_4__ chipco; } ;
struct b43_wldev {TYPE_2__* dev; } ;
struct TYPE_6__ {TYPE_1__* sdev; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2063_PA_SP7 ; 
 int /*<<< orphan*/  B2063_PLL_SP1 ; 
 int /*<<< orphan*/  B2063_RC_CALIB_CTL1 ; 
 int /*<<< orphan*/  B2063_RC_CALIB_CTL2 ; 
 int /*<<< orphan*/  B2063_RC_CALIB_CTL3 ; 
 int /*<<< orphan*/  B2063_RC_CALIB_CTL4 ; 
 int /*<<< orphan*/  B2063_RC_CALIB_CTL5 ; 
 int /*<<< orphan*/  B2063_RC_CALIB_CTL6 ; 
 int /*<<< orphan*/  B2063_RX_BB_SP8 ; 
 int /*<<< orphan*/  B2063_TX_BB_SP3 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	struct ssb_bus *bus = dev->dev->sdev->bus;
	u32 crystal_freq = bus->chipco.pmu.crystalfreq * 1000;
	u8 tmp = FUNC1(dev, B2063_RX_BB_SP8) & 0xFF;
	int i;

	FUNC2(dev, B2063_RX_BB_SP8, 0x0);
	FUNC2(dev, B2063_RC_CALIB_CTL1, 0x7E);
	FUNC0(dev, B2063_PLL_SP1, 0xF7);
	FUNC2(dev, B2063_RC_CALIB_CTL1, 0x7C);
	FUNC2(dev, B2063_RC_CALIB_CTL2, 0x15);
	FUNC2(dev, B2063_RC_CALIB_CTL3, 0x70);
	FUNC2(dev, B2063_RC_CALIB_CTL4, 0x52);
	FUNC2(dev, B2063_RC_CALIB_CTL5, 0x1);
	FUNC2(dev, B2063_RC_CALIB_CTL1, 0x7D);

	for (i = 0; i < 10000; i++) {
		if (FUNC1(dev, B2063_RC_CALIB_CTL6) & 0x2)
			break;
		FUNC3(1);
	}

	if (!(FUNC1(dev, B2063_RC_CALIB_CTL6) & 0x2))
		FUNC2(dev, B2063_RX_BB_SP8, tmp);

	tmp = FUNC1(dev, B2063_TX_BB_SP3) & 0xFF;

	FUNC2(dev, B2063_TX_BB_SP3, 0x0);
	FUNC2(dev, B2063_RC_CALIB_CTL1, 0x7E);
	FUNC2(dev, B2063_RC_CALIB_CTL1, 0x7C);
	FUNC2(dev, B2063_RC_CALIB_CTL2, 0x55);
	FUNC2(dev, B2063_RC_CALIB_CTL3, 0x76);

	if (crystal_freq == 24000000) {
		FUNC2(dev, B2063_RC_CALIB_CTL4, 0xFC);
		FUNC2(dev, B2063_RC_CALIB_CTL5, 0x0);
	} else {
		FUNC2(dev, B2063_RC_CALIB_CTL4, 0x13);
		FUNC2(dev, B2063_RC_CALIB_CTL5, 0x1);
	}

	FUNC2(dev, B2063_PA_SP7, 0x7D);

	for (i = 0; i < 10000; i++) {
		if (FUNC1(dev, B2063_RC_CALIB_CTL6) & 0x2)
			break;
		FUNC3(1);
	}

	if (!(FUNC1(dev, B2063_RC_CALIB_CTL6) & 0x2))
		FUNC2(dev, B2063_TX_BB_SP3, tmp);

	FUNC2(dev, B2063_RC_CALIB_CTL1, 0x7E);
}