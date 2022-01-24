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
struct mmc_host {int caps; } ;

/* Variables and functions */
 int MMC_CAP_SET_XPC_180 ; 
 int MMC_CAP_SET_XPC_300 ; 
 int MMC_CAP_SET_XPC_330 ; 
 int MMC_CAP_UHS_DDR50 ; 
 int MMC_CAP_UHS_SDR104 ; 
 int MMC_CAP_UHS_SDR12 ; 
 int MMC_CAP_UHS_SDR25 ; 
 int MMC_CAP_UHS_SDR50 ; 
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_180 ; 
 int SD_OCR_CCS ; 
 int SD_OCR_S18R ; 
 int SD_OCR_XPC ; 
 int FUNC0 (struct mmc_host*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*,int,int*) ; 
 int FUNC4 (struct mmc_host*,int*) ; 
 int FUNC5 (struct mmc_host*,int) ; 
 int FUNC6 (struct mmc_host*,int /*<<< orphan*/ ) ; 

int FUNC7(struct mmc_host *host, u32 ocr, u32 *cid, u32 *rocr)
{
	int err;

	/*
	 * Since we're changing the OCR value, we seem to
	 * need to tell some cards to go back to the idle
	 * state.  We wait 1ms to give cards time to
	 * respond.
	 */
	FUNC1(host);

	/*
	 * If SD_SEND_IF_COND indicates an SD 2.0
	 * compliant card and we should set bit 30
	 * of the ocr to indicate that we can handle
	 * block-addressed SDHC cards.
	 */
	err = FUNC5(host, ocr);
	if (!err)
		ocr |= SD_OCR_CCS;

	/*
	 * If the host supports one of UHS-I modes, request the card
	 * to switch to 1.8V signaling level.
	 */
	if (host->caps & (MMC_CAP_UHS_SDR12 | MMC_CAP_UHS_SDR25 |
	    MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR104 | MMC_CAP_UHS_DDR50))
		ocr |= SD_OCR_S18R;

	/* If the host can supply more than 150mA, XPC should be set to 1. */
	if (host->caps & (MMC_CAP_SET_XPC_330 | MMC_CAP_SET_XPC_300 |
	    MMC_CAP_SET_XPC_180))
		ocr |= SD_OCR_XPC;

try_again:
	err = FUNC3(host, ocr, rocr);
	if (err)
		return err;

	/*
	 * In case CCS and S18A in the response is set, start Signal Voltage
	 * Switch procedure. SPI mode doesn't support CMD11.
	 */
	if (!FUNC2(host) && rocr &&
	   ((*rocr & 0x41000000) == 0x41000000)) {
		err = FUNC6(host, MMC_SIGNAL_VOLTAGE_180);
		if (err) {
			ocr &= ~SD_OCR_S18R;
			goto try_again;
		}
	}

	if (FUNC2(host))
		err = FUNC4(host, cid);
	else
		err = FUNC0(host, cid);

	return err;
}