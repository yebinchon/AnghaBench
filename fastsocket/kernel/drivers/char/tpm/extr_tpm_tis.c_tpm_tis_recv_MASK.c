#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  locality; int /*<<< orphan*/  int_queue; int /*<<< orphan*/  timeout_c; } ;
struct tpm_chip {TYPE_1__ vendor; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ETIME ; 
 size_t TPM_HEADER_SIZE ; 
 int TPM_STS_DATA_AVAIL ; 
 int /*<<< orphan*/  TPM_STS_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct tpm_chip*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*) ; 
 int FUNC5 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct tpm_chip *chip, u8 *buf, size_t count)
{
	int size = 0;
	int expected, status;

	if (count < TPM_HEADER_SIZE) {
		size = -EIO;
		goto out;
	}

	/* read first 10 bytes, including tag, paramsize, and result */
	if ((size =
	     FUNC2(chip, buf, TPM_HEADER_SIZE)) < TPM_HEADER_SIZE) {
		FUNC1(chip->dev, "Unable to read header\n");
		goto out;
	}

	expected = FUNC0(*(__be32 *) (buf + 2));
	if (expected > count) {
		size = -EIO;
		goto out;
	}

	if ((size +=
	     FUNC2(chip, &buf[TPM_HEADER_SIZE],
		       expected - TPM_HEADER_SIZE)) < expected) {
		FUNC1(chip->dev, "Unable to read remainder of result\n");
		size = -ETIME;
		goto out;
	}

	FUNC6(chip, TPM_STS_VALID, chip->vendor.timeout_c,
			  &chip->vendor.int_queue);
	status = FUNC5(chip);
	if (status & TPM_STS_DATA_AVAIL) {	/* retry? */
		FUNC1(chip->dev, "Error left over data\n");
		size = -EIO;
		goto out;
	}

out:
	FUNC4(chip);
	FUNC3(chip, chip->vendor.locality, 0);
	return size;
}