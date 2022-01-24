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
 int EIO ; 
 int /*<<< orphan*/  STAT ; 
 int STAT_RDA ; 
 int STAT_XFE ; 
 int TPM_MAX_TRIES ; 
 int /*<<< orphan*/  TPM_MSLEEP_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tpm_chip *chip, int wait_for_bit)
{
	int status;
	int i;
	for (i = 0; i < TPM_MAX_TRIES; i++) {
		status = FUNC2(STAT);
		/* check the status-register if wait_for_bit is set */
		if (status & 1 << wait_for_bit)
			break;
		FUNC1(TPM_MSLEEP_TIME);
	}
	if (i == TPM_MAX_TRIES) {	/* timeout occurs */
		if (wait_for_bit == STAT_XFE)
			FUNC0(chip->dev, "Timeout in wait(STAT_XFE)\n");
		if (wait_for_bit == STAT_RDA)
			FUNC0(chip->dev, "Timeout in wait(STAT_RDA)\n");
		return -EIO;
	}
	return 0;
}