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
struct wm97xx {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_GPIO_CFG ; 
 int /*<<< orphan*/  AC97_MISC_AFE ; 
 int /*<<< orphan*/  AC97_WM97XX_DIGITISER1 ; 
 int /*<<< orphan*/  AC97_WM97XX_DIGITISER2 ; 
 int WM9712_45W ; 
 int WM9712_PIL ; 
 int FUNC0 (int) ; 
 int WM9712_WAIT ; 
 int FUNC1 (int) ; 
 int WM97XX_GPIO_4 ; 
 int WM97XX_RPR ; 
 scalar_t__ coord ; 
 int delay ; 
 int* delay_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ five_wire ; 
 int mask ; 
 int pil ; 
 scalar_t__ pressure ; 
 int rpu ; 
 int FUNC4 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct wm97xx *wm)
{
	u16 dig1 = 0;
	u16 dig2 = WM97XX_RPR | FUNC0(1);

	/* WM9712 rpu */
	if (rpu) {
		dig2 &= 0xffc0;
		dig2 |= FUNC0(rpu);
		FUNC2(wm->dev, "setting pen detect pull-up to %d Ohms",
			64000 / rpu);
	}

	/* WM9712 five wire */
	if (five_wire) {
		dig2 |= WM9712_45W;
		FUNC2(wm->dev, "setting 5-wire touchscreen mode.");

		if (pil) {
			FUNC3(wm->dev, "pressure measurement is not "
				 "supported in 5-wire mode\n");
			pil = 0;
		}
	}

	/* touchpanel pressure current*/
	if (pil == 2) {
		dig2 |= WM9712_PIL;
		FUNC2(wm->dev,
			"setting pressure measurement current to 400uA.");
	} else if (pil)
		FUNC2(wm->dev,
			"setting pressure measurement current to 200uA.");
	if (!pil)
		pressure = 0;

	/* polling mode sample settling delay */
	if (delay < 0 || delay > 15) {
		FUNC2(wm->dev, "supplied delay out of range.");
		delay = 4;
	}
	dig1 &= 0xff0f;
	dig1 |= FUNC1(delay);
	FUNC2(wm->dev, "setting adc sample delay to %d u Secs.",
		delay_table[delay]);

	/* mask */
	dig2 |= ((mask & 0x3) << 6);
	if (mask) {
		u16 reg;
		/* Set GPIO4 as Mask Pin*/
		reg = FUNC4(wm, AC97_MISC_AFE);
		FUNC5(wm, AC97_MISC_AFE, reg | WM97XX_GPIO_4);
		reg = FUNC4(wm, AC97_GPIO_CFG);
		FUNC5(wm, AC97_GPIO_CFG, reg | WM97XX_GPIO_4);
	}

	/* wait - coord mode */
	if (coord)
		dig2 |= WM9712_WAIT;

	FUNC5(wm, AC97_WM97XX_DIGITISER1, dig1);
	FUNC5(wm, AC97_WM97XX_DIGITISER2, dig2);
}