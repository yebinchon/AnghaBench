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
struct em28xx_reg_seq {int sleep; scalar_t__ reg; int /*<<< orphan*/  mask; int /*<<< orphan*/  val; } ;
struct em28xx {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ EM28XX_ANALOG_MODE ; 
 int EM28XX_R12_VINENABLE ; 
 scalar_t__ EM28XX_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*,int,int) ; 
 int FUNC1 (struct em28xx*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct em28xx *dev, struct em28xx_reg_seq *gpio)
{
	int rc = 0;

	if (!gpio)
		return rc;

	if (dev->mode != EM28XX_SUSPEND) {
		FUNC0(dev, 0x48, 0x00);
		if (dev->mode == EM28XX_ANALOG_MODE)
			FUNC0(dev, EM28XX_R12_VINENABLE, 0x67);
		else
			FUNC0(dev, EM28XX_R12_VINENABLE, 0x37);
		FUNC2(6);
	}

	/* Send GPIO reset sequences specified at board entry */
	while (gpio->sleep >= 0) {
		if (gpio->reg >= 0) {
			rc = FUNC1(dev,
						   gpio->reg,
						   gpio->val,
						   gpio->mask);
			if (rc < 0)
				return rc;
		}
		if (gpio->sleep > 0)
			FUNC2(gpio->sleep);

		gpio++;
	}
	return rc;
}