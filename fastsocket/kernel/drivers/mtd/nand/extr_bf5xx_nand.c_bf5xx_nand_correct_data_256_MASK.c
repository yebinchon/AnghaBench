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
typedef  int u_char ;
typedef  int u32 ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_info {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int) ; 
 struct bf5xx_nand_info* FUNC3 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd, u_char *dat,
					u_char *read_ecc, u_char *calc_ecc)
{
	struct bf5xx_nand_info *info = FUNC3(mtd);
	u32 syndrome[5];
	u32 calced, stored;
	int i;
	unsigned short failing_bit, failing_byte;
	u_char data;

	calced = calc_ecc[0] | (calc_ecc[1] << 8) | (calc_ecc[2] << 16);
	stored = read_ecc[0] | (read_ecc[1] << 8) | (read_ecc[2] << 16);

	syndrome[0] = (calced ^ stored);

	/*
	 * syndrome 0: all zero
	 * No error in data
	 * No action
	 */
	if (!syndrome[0] || !calced || !stored)
		return 0;

	/*
	 * sysdrome 0: only one bit is one
	 * ECC data was incorrect
	 * No action
	 */
	if (FUNC2(syndrome[0]) == 1) {
		FUNC0(info->device, "ECC data was incorrect!\n");
		return 1;
	}

	syndrome[1] = (calced & 0x7FF) ^ (stored & 0x7FF);
	syndrome[2] = (calced & 0x7FF) ^ ((calced >> 11) & 0x7FF);
	syndrome[3] = (stored & 0x7FF) ^ ((stored >> 11) & 0x7FF);
	syndrome[4] = syndrome[2] ^ syndrome[3];

	for (i = 0; i < 5; i++)
		FUNC1(info->device, "syndrome[%d] 0x%08x\n", i, syndrome[i]);

	FUNC1(info->device,
		"calced[0x%08x], stored[0x%08x]\n",
		calced, stored);

	/*
	 * sysdrome 0: exactly 11 bits are one, each parity
	 * and parity' pair is 1 & 0 or 0 & 1.
	 * 1-bit correctable error
	 * Correct the error
	 */
	if (FUNC2(syndrome[0]) == 11 && syndrome[4] == 0x7FF) {
		FUNC1(info->device,
			"1-bit correctable error, correct it.\n");
		FUNC1(info->device,
			"syndrome[1] 0x%08x\n", syndrome[1]);

		failing_bit = syndrome[1] & 0x7;
		failing_byte = syndrome[1] >> 0x3;
		data = *(dat + failing_byte);
		data = data ^ (0x1 << failing_bit);
		*(dat + failing_byte) = data;

		return 0;
	}

	/*
	 * sysdrome 0: random data
	 * More than 1-bit error, non-correctable error
	 * Discard data, mark bad block
	 */
	FUNC0(info->device,
		"More than 1-bit error, non-correctable error.\n");
	FUNC0(info->device,
		"Please discard data, mark bad block\n");

	return 1;
}