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
typedef  int u8 ;

/* Variables and functions */
 scalar_t__ TPACPI_BRGHT_MODE_ECNVRAM ; 
 int /*<<< orphan*/  TPACPI_DBG_BRGHT ; 
 int /*<<< orphan*/  TP_EC_BACKLIGHT ; 
 int TP_EC_BACKLIGHT_LVLMSK ; 
 int /*<<< orphan*/  TP_NVRAM_ADDR_BRIGHTNESS ; 
 int TP_NVRAM_MASK_LEVEL_BRIGHTNESS ; 
 int TP_NVRAM_POS_LEVEL_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ brightness_mode ; 
 int /*<<< orphan*/  brightness_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
	u8 lec = 0;
	u8 b_nvram;

	if (brightness_mode != TPACPI_BRGHT_MODE_ECNVRAM)
		return;

	FUNC7(TPACPI_DBG_BRGHT,
		"trying to checkpoint backlight level to NVRAM...\n");

	if (FUNC2(&brightness_mutex) < 0)
		return;

	if (FUNC6(!FUNC0(TP_EC_BACKLIGHT, &lec)))
		goto unlock;
	lec &= TP_EC_BACKLIGHT_LVLMSK;
	b_nvram = FUNC4(TP_NVRAM_ADDR_BRIGHTNESS);

	if (lec != ((b_nvram & TP_NVRAM_MASK_LEVEL_BRIGHTNESS)
			     >> TP_NVRAM_POS_LEVEL_BRIGHTNESS)) {
		/* NVRAM needs update */
		b_nvram &= ~(TP_NVRAM_MASK_LEVEL_BRIGHTNESS <<
				TP_NVRAM_POS_LEVEL_BRIGHTNESS);
		b_nvram |= lec;
		FUNC5(b_nvram, TP_NVRAM_ADDR_BRIGHTNESS);
		FUNC1(TPACPI_DBG_BRGHT,
			   "updated NVRAM backlight level to %u (0x%02x)\n",
			   (unsigned int) lec, (unsigned int) b_nvram);
	} else
		FUNC7(TPACPI_DBG_BRGHT,
			   "NVRAM backlight level already is %u (0x%02x)\n",
			   (unsigned int) lec, (unsigned int) b_nvram);

unlock:
	FUNC3(&brightness_mutex);
}