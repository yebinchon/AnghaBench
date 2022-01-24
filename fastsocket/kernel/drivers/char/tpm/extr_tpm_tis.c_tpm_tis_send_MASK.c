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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  locality; int /*<<< orphan*/  read_queue; scalar_t__ irq; scalar_t__ iobase; int /*<<< orphan*/  int_queue; int /*<<< orphan*/  timeout_c; int /*<<< orphan*/  timeout_b; } ;
struct tpm_chip {TYPE_1__ vendor; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ETIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TPM_STS_COMMAND_READY ; 
 int TPM_STS_DATA_AVAIL ; 
 int TPM_STS_DATA_EXPECT ; 
 int /*<<< orphan*/  TPM_STS_GO ; 
 int TPM_STS_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  itpm ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_chip*) ; 
 int FUNC9 (struct tpm_chip*) ; 
 scalar_t__ FUNC10 (struct tpm_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct tpm_chip *chip, u8 *buf, size_t len)
{
	int rc, status, burstcnt;
	size_t count = 0;
	u32 ordinal;

	if (FUNC6(chip, 0) < 0)
		return -EBUSY;

	status = FUNC9(chip);
	if ((status & TPM_STS_COMMAND_READY) == 0) {
		FUNC8(chip);
		if (FUNC10
		    (chip, TPM_STS_COMMAND_READY, chip->vendor.timeout_b,
		     &chip->vendor.int_queue) < 0) {
			rc = -ETIME;
			goto out_err;
		}
	}

	while (count < len - 1) {
		burstcnt = FUNC3(chip);
		for (; burstcnt > 0 && count < len - 1; burstcnt--) {
			FUNC4(buf[count], chip->vendor.iobase +
				 FUNC0(chip->vendor.locality));
			count++;
		}

		FUNC10(chip, TPM_STS_VALID, chip->vendor.timeout_c,
				  &chip->vendor.int_queue);
		status = FUNC9(chip);
		if (!itpm && (status & TPM_STS_DATA_EXPECT) == 0) {
			rc = -EIO;
			goto out_err;
		}
	}

	/* write last byte */
	FUNC4(buf[count],
		 chip->vendor.iobase + FUNC0(chip->vendor.locality));
	FUNC10(chip, TPM_STS_VALID, chip->vendor.timeout_c,
			  &chip->vendor.int_queue);
	status = FUNC9(chip);
	if ((status & TPM_STS_DATA_EXPECT) != 0) {
		rc = -EIO;
		goto out_err;
	}

	/* go and do it */
	FUNC4(TPM_STS_GO,
		 chip->vendor.iobase + FUNC1(chip->vendor.locality));

	if (chip->vendor.irq) {
		ordinal = FUNC2(*((__be32 *) (buf + 6)));
		if (FUNC10
		    (chip, TPM_STS_DATA_AVAIL | TPM_STS_VALID,
		     FUNC7(chip, ordinal),
		     &chip->vendor.read_queue) < 0) {
			rc = -ETIME;
			goto out_err;
		}
	}
	return len;
out_err:
	FUNC8(chip);
	FUNC5(chip, chip->vendor.locality, 0);
	return rc;
}