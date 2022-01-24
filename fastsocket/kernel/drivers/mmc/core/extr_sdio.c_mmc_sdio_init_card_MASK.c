#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mmc_host {int ocr; struct mmc_card* card; int /*<<< orphan*/  claimed; } ;
struct TYPE_4__ {int /*<<< orphan*/ * type; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ device; } ;
struct mmc_card {scalar_t__ type; int /*<<< orphan*/  host; TYPE_2__ dev; TYPE_1__ cis; int /*<<< orphan*/  rca; int /*<<< orphan*/  raw_cid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (struct mmc_card*) ; 
 int /*<<< orphan*/  MMC_BUSMODE_PUSHPULL ; 
 int /*<<< orphan*/  MMC_BUS_WIDTH_4 ; 
 scalar_t__ MMC_TYPE_SDIO ; 
 scalar_t__ MMC_TYPE_SD_COMBO ; 
 int FUNC2 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mmc_card* FUNC5 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 scalar_t__ FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_card*) ; 
 int FUNC10 (struct mmc_host*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mmc_host*,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC12 (struct mmc_card*) ; 
 int FUNC13 (struct mmc_host*,struct mmc_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mmc_card*) ; 
 int FUNC15 (struct mmc_card*) ; 
 int FUNC16 (struct mmc_host*,int,int*) ; 
 int FUNC17 (struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_type ; 
 int FUNC22 (struct mmc_card*) ; 
 int FUNC23 (struct mmc_card*) ; 
 int FUNC24 (struct mmc_card*) ; 
 int FUNC25 (struct mmc_card*) ; 
 int FUNC26 (struct mmc_card*) ; 
 int /*<<< orphan*/  use_spi_crc ; 

__attribute__((used)) static int FUNC27(struct mmc_host *host, u32 ocr,
			      struct mmc_card *oldcard)
{
	struct mmc_card *card;
	int err;

	FUNC0(!host);
	FUNC3(!host->claimed);

	/*
	 * Inform the card of the voltage
	 */
	err = FUNC16(host, host->ocr, &ocr);
	if (err)
		goto err;

	/*
	 * For SPI, enable CRC as appropriate.
	 */
	if (FUNC8(host)) {
		err = FUNC21(host, use_spi_crc);
		if (err)
			goto err;
	}

	/*
	 * Allocate card structure.
	 */
	card = FUNC5(host, NULL);
	if (FUNC1(card)) {
		err = FUNC2(card);
		goto err;
	}

	err = FUNC10(host, host->ocr & ocr, card->raw_cid, NULL);

	if (!err) {
		card->type = MMC_TYPE_SD_COMBO;

		if (oldcard && (oldcard->type != MMC_TYPE_SD_COMBO ||
		    FUNC4(card->raw_cid, oldcard->raw_cid, sizeof(card->raw_cid)) != 0)) {
			FUNC9(card);
			return -ENOENT;
		}
	} else {
		card->type = MMC_TYPE_SDIO;

		if (oldcard && oldcard->type != MMC_TYPE_SDIO) {
			FUNC9(card);
			return -ENOENT;
		}
	}

	/*
	 * For native busses:  set card RCA and quit open drain mode.
	 */
	if (!FUNC8(host)) {
		err = FUNC17(host, &card->rca);
		if (err)
			goto remove;

		FUNC18(host, MMC_BUSMODE_PUSHPULL);
	}

	/*
	 * Read CSD, before selecting the card
	 */
	if (!oldcard && card->type == MMC_TYPE_SD_COMBO) {
		err = FUNC11(host, card);
		if (err)
			return err;

		FUNC6(card);
	}

	/*
	 * Select card, as all following commands rely on that.
	 */
	if (!FUNC8(host)) {
		err = FUNC15(card);
		if (err)
			goto remove;
	}

	/*
	 * Read the common registers.
	 */
	err = FUNC25(card);
	if (err)
		goto remove;

	/*
	 * Read the common CIS tuples.
	 */
	err = FUNC26(card);
	if (err)
		goto remove;

	if (oldcard) {
		int same = (card->cis.vendor == oldcard->cis.vendor &&
			    card->cis.device == oldcard->cis.device);
		FUNC9(card);
		if (!same)
			return -ENOENT;

		card = oldcard;
		return 0;
	}

	if (card->type == MMC_TYPE_SD_COMBO) {
		err = FUNC13(host, card, oldcard != NULL);
		/* handle as SDIO-only card if memory init failed */
		if (err) {
			FUNC7(host);
			if (FUNC8(host))
				/* should not fail, as it worked previously */
				FUNC21(host, use_spi_crc);
			card->type = MMC_TYPE_SDIO;
		} else
			card->dev.type = &sd_type;
	}

	/*
	 * If needed, disconnect card detection pull-up resistor.
	 */
	err = FUNC22(card);
	if (err)
		goto remove;

	/*
	 * Switch to high-speed (if supported).
	 */
	err = FUNC24(card);
	if (err > 0)
		FUNC12(card);
	else if (err)
		goto remove;

	/*
	 * Change to the card's maximum speed.
	 */
	FUNC20(host, FUNC14(card));

	/*
	 * Switch to wider bus (if supported).
	 */
	err = FUNC23(card);
	if (err > 0)
		FUNC19(card->host, MMC_BUS_WIDTH_4);
	else if (err)
		goto remove;

	if (!oldcard)
		host->card = card;
	return 0;

remove:
	if (!oldcard)
		FUNC9(card);

err:
	return err;
}