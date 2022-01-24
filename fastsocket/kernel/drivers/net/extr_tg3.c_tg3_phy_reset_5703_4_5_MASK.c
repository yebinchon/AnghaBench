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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED1000 ; 
 int CTL1000_AS_MASTER ; 
 int CTL1000_ENABLE_MASTER ; 
 int EBUSY ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  MII_TG3_DSP_ADDRESS ; 
 int /*<<< orphan*/  MII_TG3_DSP_CONTROL ; 
 int /*<<< orphan*/  MII_TG3_EXT_CTRL ; 
 int FUNC0 (struct tg3*) ; 
 int FUNC1 (struct tg3*) ; 
 int FUNC2 (struct tg3*,int) ; 
 int FUNC3 (struct tg3*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int,int) ; 
 scalar_t__ FUNC5 (struct tg3*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct tg3 *tp)
{
	u32 reg32, phy9_orig;
	int retries, do_phy_reset, err;

	retries = 10;
	do_phy_reset = 1;
	do {
		if (do_phy_reset) {
			err = FUNC0(tp);
			if (err)
				return err;
			do_phy_reset = 0;
		}

		/* Disable transmitter and interrupt.  */
		if (FUNC5(tp, MII_TG3_EXT_CTRL, &reg32))
			continue;

		reg32 |= 0x3000;
		FUNC6(tp, MII_TG3_EXT_CTRL, reg32);

		/* Set full-duplex, 1000 mbps.  */
		FUNC6(tp, MII_BMCR,
			     BMCR_FULLDPLX | BMCR_SPEED1000);

		/* Set to master mode.  */
		if (FUNC5(tp, MII_CTRL1000, &phy9_orig))
			continue;

		FUNC6(tp, MII_CTRL1000,
			     CTL1000_AS_MASTER | CTL1000_ENABLE_MASTER);

		err = FUNC2(tp, true);
		if (err)
			return err;

		/* Block the PHY control access.  */
		FUNC4(tp, 0x8005, 0x0800);

		err = FUNC3(tp, &do_phy_reset);
		if (!err)
			break;
	} while (--retries);

	err = FUNC1(tp);
	if (err)
		return err;

	FUNC4(tp, 0x8005, 0x0000);

	FUNC6(tp, MII_TG3_DSP_ADDRESS, 0x8200);
	FUNC6(tp, MII_TG3_DSP_CONTROL, 0x0000);

	FUNC2(tp, false);

	FUNC6(tp, MII_CTRL1000, phy9_orig);

	if (!FUNC5(tp, MII_TG3_EXT_CTRL, &reg32)) {
		reg32 &= ~0x3000;
		FUNC6(tp, MII_TG3_EXT_CTRL, reg32);
	} else if (!err)
		err = -EBUSY;

	return err;
}