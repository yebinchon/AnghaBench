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
typedef  int u32 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  RDFIFO ; 
 int /*<<< orphan*/  STAT_RDA ; 
 int TPM_CTRL_DATA ; 
 int TPM_CTRL_ERROR ; 
 int TPM_CTRL_WTX ; 
 int TPM_CTRL_WTX_ABORT_ACK ; 
 int TPM_INF_NAK ; 
 scalar_t__ TPM_MAX_WTX_PACKAGES ; 
 int TPM_VL_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ number_of_wtx ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int FUNC5 (struct tpm_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tpm_chip *chip, u8 * buf, size_t count)
{
	int i;
	int ret;
	u32 size = 0;
	number_of_wtx = 0;

recv_begin:
	/* start receiving header */
	for (i = 0; i < 4; i++) {
		ret = FUNC5(chip, STAT_RDA);
		if (ret)
			return -EIO;
		buf[i] = FUNC2(RDFIFO);
	}

	if (buf[0] != TPM_VL_VER) {
		FUNC0(chip->dev,
			"Wrong transport protocol implementation!\n");
		return -EIO;
	}

	if (buf[1] == TPM_CTRL_DATA) {
		/* size of the data received */
		size = ((buf[2] << 8) | buf[3]);

		for (i = 0; i < size; i++) {
			FUNC5(chip, STAT_RDA);
			buf[i] = FUNC2(RDFIFO);
		}

		if ((size == 0x6D00) && (buf[1] == 0x80)) {
			FUNC0(chip->dev, "Error handling on vendor layer!\n");
			return -EIO;
		}

		for (i = 0; i < size; i++)
			buf[i] = buf[i + 6];

		size = size - 6;
		return size;
	}

	if (buf[1] == TPM_CTRL_WTX) {
		FUNC1(chip->dev, "WTX-package received\n");
		if (number_of_wtx < TPM_MAX_WTX_PACKAGES) {
			FUNC3(chip);
			goto recv_begin;
		} else {
			FUNC4(chip);
			goto recv_begin;
		}
	}

	if (buf[1] == TPM_CTRL_WTX_ABORT_ACK) {
		FUNC1(chip->dev, "WTX-abort acknowledged\n");
		return size;
	}

	if (buf[1] == TPM_CTRL_ERROR) {
		FUNC0(chip->dev, "ERROR-package received:\n");
		if (buf[4] == TPM_INF_NAK)
			FUNC0(chip->dev,
				"-> Negative acknowledgement"
				" - retransmit command!\n");
		return -EIO;
	}
	return -EIO;
}