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
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TPM_CTRL_WTX_ABORT ; 
 int TPM_VL_VER ; 
 int /*<<< orphan*/  TPM_WTX_MSLEEP_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ number_of_wtx ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*,int) ; 

__attribute__((used)) static void FUNC3(struct tpm_chip *chip)
{
	FUNC0(chip->dev, "Aborting WTX\n");
	FUNC2(chip, TPM_VL_VER);
	FUNC2(chip, TPM_CTRL_WTX_ABORT);
	FUNC2(chip, 0x00);
	FUNC2(chip, 0x00);
	number_of_wtx = 0;
	FUNC1(TPM_WTX_MSLEEP_TIME);
}