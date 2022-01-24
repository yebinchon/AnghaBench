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
struct macio_chip {int dummy; } ;

/* Variables and functions */
 int HEATHROW_FCR ; 
 int HRW_BMAC_IO_ENABLE ; 
 int HRW_BMAC_RESET ; 
 int /*<<< orphan*/  HRW_GPIO_MODEM_RESET ; 
 int HRW_IDE0_RESET_N ; 
 int HRW_IOBUS_ENABLE ; 
 int HRW_SCC_ENABLE ; 
 int /*<<< orphan*/  HRW_SCC_TRANS_EN_N ; 
 int HRW_SOUND_CLK_ENABLE ; 
 int /*<<< orphan*/  HRW_SOUND_POWER_N ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int OH_SCCA_IO ; 
 int OH_SCCB_IO ; 
 int /*<<< orphan*/  FUNC5 (struct macio_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  save_alt_dbdma ; 
 int /*<<< orphan*/  save_dbdma ; 
 void** save_fcr ; 
 void* save_mbcr ; 

__attribute__((used)) static void FUNC6(struct macio_chip *macio, int secondary)
{
	if (secondary) {
		FUNC5(macio, save_alt_dbdma);
		save_fcr[2] = FUNC2(0x38);
		save_fcr[3] = FUNC2(0x3c);
	} else {
		FUNC5(macio, save_dbdma);
		save_fcr[0] = FUNC2(0x38);
		save_fcr[1] = FUNC2(0x3c);
		save_mbcr = FUNC2(0x34);
		/* Make sure sound is shut down */
		FUNC1(HEATHROW_FCR, HRW_SOUND_POWER_N);
		FUNC0(HEATHROW_FCR, HRW_SOUND_CLK_ENABLE);
		/* This seems to be necessary as well or the fan
		 * keeps coming up and battery drains fast */
		FUNC0(HEATHROW_FCR, HRW_IOBUS_ENABLE);
		FUNC0(HEATHROW_FCR, HRW_IDE0_RESET_N);
		/* Make sure eth is down even if module or sleep
		 * won't work properly */
		FUNC0(HEATHROW_FCR, HRW_BMAC_IO_ENABLE | HRW_BMAC_RESET);
	}
	/* Make sure modem is shut down */
	FUNC4(HRW_GPIO_MODEM_RESET,
		FUNC3(HRW_GPIO_MODEM_RESET) & ~1);
	FUNC1(HEATHROW_FCR, HRW_SCC_TRANS_EN_N);
	FUNC0(HEATHROW_FCR, OH_SCCA_IO|OH_SCCB_IO|HRW_SCC_ENABLE);

	/* Let things settle */
	(void)FUNC2(HEATHROW_FCR);
}