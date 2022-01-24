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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  temp ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct if_spi_card {int /*<<< orphan*/  helper_fw_name; struct spi_device* spi; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int FIRMWARE_DNLD_OK ; 
 int HELPER_FW_LOAD_CHUNK_SZ ; 
 int /*<<< orphan*/  IF_SPI_CARD_INT_CAUSE_REG ; 
 int IF_SPI_CIC_CMD_DOWNLOAD_OVER ; 
 int /*<<< orphan*/  IF_SPI_CMD_RDWRPORT_REG ; 
 int /*<<< orphan*/  IF_SPI_HIST_CMD_DOWNLOAD_RDY ; 
 int /*<<< orphan*/  IF_SPI_HOST_INT_STATUS_REG ; 
 int /*<<< orphan*/  IF_SPI_SCRATCH_1_REG ; 
 int /*<<< orphan*/  LBS_DEB_SPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct if_spi_card*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct if_spi_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct if_spi_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (struct if_spi_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct if_spi_card *card)
{
	int err = 0;
	const struct firmware *firmware = NULL;
	int bytes_remaining;
	const u8 *fw;
	u8 temp[HELPER_FW_LOAD_CHUNK_SZ];
	struct spi_device *spi = card->spi;

	FUNC0(LBS_DEB_SPI);

	err = FUNC10(card, 1, 0);
	if (err)
		goto out;
	/* Get helper firmware image */
	err = FUNC9(&firmware, card->helper_fw_name, &spi->dev);
	if (err) {
		FUNC3("request_firmware failed with err = %d\n", err);
		goto out;
	}
	bytes_remaining = firmware->size;
	fw = firmware->data;

	/* Load helper firmware image */
	while (bytes_remaining > 0) {
		/* Scratch pad 1 should contain the number of bytes we
		 * want to download to the firmware */
		err = FUNC13(card, IF_SPI_SCRATCH_1_REG,
					HELPER_FW_LOAD_CHUNK_SZ);
		if (err)
			goto release_firmware;

		err = FUNC11(card, IF_SPI_HOST_INT_STATUS_REG,
					IF_SPI_HIST_CMD_DOWNLOAD_RDY,
					IF_SPI_HIST_CMD_DOWNLOAD_RDY);
		if (err)
			goto release_firmware;

		/* Feed the data into the command read/write port reg
		 * in chunks of 64 bytes */
		FUNC6(temp, 0, sizeof(temp));
		FUNC5(temp, fw,
		       FUNC7(bytes_remaining, HELPER_FW_LOAD_CHUNK_SZ));
		FUNC4(10);
		err = FUNC12(card, IF_SPI_CMD_RDWRPORT_REG,
					temp, HELPER_FW_LOAD_CHUNK_SZ);
		if (err)
			goto release_firmware;

		/* Interrupt the boot code */
		err = FUNC13(card, IF_SPI_HOST_INT_STATUS_REG, 0);
		if (err)
			goto release_firmware;
		err = FUNC13(card, IF_SPI_CARD_INT_CAUSE_REG,
				       IF_SPI_CIC_CMD_DOWNLOAD_OVER);
		if (err)
			goto release_firmware;
		bytes_remaining -= HELPER_FW_LOAD_CHUNK_SZ;
		fw += HELPER_FW_LOAD_CHUNK_SZ;
	}

	/* Once the helper / single stage firmware download is complete,
	 * write 0 to scratch pad 1 and interrupt the
	 * bootloader. This completes the helper download. */
	err = FUNC13(card, IF_SPI_SCRATCH_1_REG, FIRMWARE_DNLD_OK);
	if (err)
		goto release_firmware;
	err = FUNC13(card, IF_SPI_HOST_INT_STATUS_REG, 0);
	if (err)
		goto release_firmware;
	err = FUNC13(card, IF_SPI_CARD_INT_CAUSE_REG,
				IF_SPI_CIC_CMD_DOWNLOAD_OVER);
		goto release_firmware;

	FUNC2("waiting for helper to boot...\n");

release_firmware:
	FUNC8(firmware);
out:
	if (err)
		FUNC3("failed to load helper firmware (err=%d)\n", err);
	FUNC1(LBS_DEB_SPI, "err %d", err);
	return err;
}