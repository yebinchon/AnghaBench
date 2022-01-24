#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wm97xx {scalar_t__ id; int pen_probably_down; int /*<<< orphan*/  codec_mutex; TYPE_1__* codec; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dig_restore ) (struct wm97xx*) ;int /*<<< orphan*/  (* poll_sample ) (struct wm97xx*,int,int*) ;int /*<<< orphan*/  (* aux_prepare ) (struct wm97xx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 scalar_t__ WM9713_ID2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wm97xx*) ; 
 int /*<<< orphan*/  FUNC3 (struct wm97xx*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm97xx*) ; 
 int FUNC5 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct wm97xx *wm, u16 adcsel)
{
	int power_adc = 0, auxval;
	u16 power = 0;

	/* get codec */
	FUNC0(&wm->codec_mutex);

	/* When the touchscreen is not in use, we may have to power up
	 * the AUX ADC before we can use sample the AUX inputs->
	 */
	if (wm->id == WM9713_ID2 &&
	    (power = FUNC5(wm, AC97_EXTENDED_MID)) & 0x8000) {
		power_adc = 1;
		FUNC6(wm, AC97_EXTENDED_MID, power & 0x7fff);
	}

	/* Prepare the codec for AUX reading */
	wm->codec->aux_prepare(wm);

	/* Turn polling mode on to read AUX ADC */
	wm->pen_probably_down = 1;
	wm->codec->poll_sample(wm, adcsel, &auxval);

	if (power_adc)
		FUNC6(wm, AC97_EXTENDED_MID, power | 0x8000);

	wm->codec->dig_restore(wm);

	wm->pen_probably_down = 0;

	FUNC1(&wm->codec_mutex);
	return auxval & 0xfff;
}