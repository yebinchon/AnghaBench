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
struct wm8350 {int /*<<< orphan*/  auxadc_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ WM8350_AUX1_READBACK ; 
 int WM8350_AUXADC_AUX1 ; 
 int WM8350_AUXADC_DATA1_MASK ; 
 int WM8350_AUXADC_ENA ; 
 int WM8350_AUXADC_POLL ; 
 int WM8350_AUXADC_TEMP ; 
 int WM8350_AUXADC_USB ; 
 scalar_t__ WM8350_DIGITISER_CONTROL_1 ; 
 scalar_t__ WM8350_POWER_MGMT_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct wm8350*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*,scalar_t__,int) ; 

int FUNC6(struct wm8350 *wm8350, int channel, int scale, int vref)
{
	u16 reg, result = 0;
	int tries = 5;

	if (channel < WM8350_AUXADC_AUX1 || channel > WM8350_AUXADC_TEMP)
		return -EINVAL;
	if (channel >= WM8350_AUXADC_USB && channel <= WM8350_AUXADC_TEMP
	    && (scale != 0 || vref != 0))
		return -EINVAL;

	FUNC1(&wm8350->auxadc_mutex);

	/* Turn on the ADC */
	reg = FUNC4(wm8350, WM8350_POWER_MGMT_5);
	FUNC5(wm8350, WM8350_POWER_MGMT_5, reg | WM8350_AUXADC_ENA);

	if (scale || vref) {
		reg = scale << 13;
		reg |= vref << 12;
		FUNC5(wm8350, WM8350_AUX1_READBACK + channel, reg);
	}

	reg = FUNC4(wm8350, WM8350_DIGITISER_CONTROL_1);
	reg |= 1 << channel | WM8350_AUXADC_POLL;
	FUNC5(wm8350, WM8350_DIGITISER_CONTROL_1, reg);

	do {
		FUNC3(1);
		reg = FUNC4(wm8350, WM8350_DIGITISER_CONTROL_1);
	} while ((reg & WM8350_AUXADC_POLL) && --tries);

	if (!tries)
		FUNC0(wm8350->dev, "adc chn %d read timeout\n", channel);
	else
		result = FUNC4(wm8350,
					 WM8350_AUX1_READBACK + channel);

	/* Turn off the ADC */
	reg = FUNC4(wm8350, WM8350_POWER_MGMT_5);
	FUNC5(wm8350, WM8350_POWER_MGMT_5,
			 reg & ~WM8350_AUXADC_ENA);

	FUNC2(&wm8350->auxadc_mutex);

	return result & WM8350_AUXADC_DATA1_MASK;
}