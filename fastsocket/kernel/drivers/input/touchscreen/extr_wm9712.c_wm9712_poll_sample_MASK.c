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
struct wm97xx {int pen_probably_down; int /*<<< orphan*/  dev; TYPE_1__* mach_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* post_sample ) (int) ;int /*<<< orphan*/  (* pre_sample ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_LINK_FRAME ; 
 int /*<<< orphan*/  AC97_WM97XX_DIGITISER1 ; 
 int /*<<< orphan*/  AC97_WM97XX_DIGITISER_RD ; 
 int RC_PENUP ; 
 int RC_VALID ; 
 int WM97XX_ADCSEL_MASK ; 
 int FUNC0 (int) ; 
 int WM97XX_PEN_DOWN ; 
 int WM97XX_POLL ; 
 int delay ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct wm97xx*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct wm97xx *wm, int adcsel, int *sample)
{
	int timeout = 5 * delay;

	if (!wm->pen_probably_down) {
		u16 data = FUNC7(wm, AC97_WM97XX_DIGITISER_RD);
		if (!(data & WM97XX_PEN_DOWN))
			return RC_PENUP;
		wm->pen_probably_down = 1;
	}

	/* set up digitiser */
	if (adcsel & 0x8000)
		adcsel = ((adcsel & 0x7fff) + 3) << 12;

	if (wm->mach_ops && wm->mach_ops->pre_sample)
		wm->mach_ops->pre_sample(adcsel);
	FUNC8(wm, AC97_WM97XX_DIGITISER1,
			 adcsel | WM97XX_POLL | FUNC0(delay));

	/* wait 3 AC97 time slots + delay for conversion */
	FUNC3(delay);

	/* wait for POLL to go low */
	while ((FUNC7(wm, AC97_WM97XX_DIGITISER1) & WM97XX_POLL)
	       && timeout) {
		FUNC6(AC97_LINK_FRAME);
		timeout--;
	}

	if (timeout <= 0) {
		/* If PDEN is set, we can get a timeout when pen goes up */
		if (FUNC2(wm))
			wm->pen_probably_down = 0;
		else
			FUNC1(wm->dev, "adc sample timeout");
		return RC_PENUP;
	}

	*sample = FUNC7(wm, AC97_WM97XX_DIGITISER_RD);
	if (wm->mach_ops && wm->mach_ops->post_sample)
		wm->mach_ops->post_sample(adcsel);

	/* check we have correct sample */
	if ((*sample & WM97XX_ADCSEL_MASK) != adcsel) {
		FUNC1(wm->dev, "adc wrong sample, read %x got %x", adcsel,
		*sample & WM97XX_ADCSEL_MASK);
		return RC_PENUP;
	}

	if (!(*sample & WM97XX_PEN_DOWN)) {
		wm->pen_probably_down = 0;
		return RC_PENUP;
	}

	return RC_VALID;
}