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
struct wm97xx {int* dig; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 int /*<<< orphan*/  AC97_WM9713_DIG3 ; 
 int /*<<< orphan*/  AC97_WM97XX_DIGITISER_RD ; 
 int WM97XX_PRP_DET_DIG ; 
 int FUNC0 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wm97xx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct wm97xx *wm, int enable)
{
	u16 val;

	if (enable) {
		val = FUNC0(wm, AC97_EXTENDED_MID);
		FUNC1(wm, AC97_EXTENDED_MID, val & 0x7fff);
		FUNC1(wm, AC97_WM9713_DIG3, wm->dig[2] |
				 WM97XX_PRP_DET_DIG);
		FUNC0(wm, AC97_WM97XX_DIGITISER_RD); /* dummy read */
	} else {
		FUNC1(wm, AC97_WM9713_DIG3, wm->dig[2] &
					~WM97XX_PRP_DET_DIG);
		val = FUNC0(wm, AC97_EXTENDED_MID);
		FUNC1(wm, AC97_EXTENDED_MID, val | 0x8000);
	}
}