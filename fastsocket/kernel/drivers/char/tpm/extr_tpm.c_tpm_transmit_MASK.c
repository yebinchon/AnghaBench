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
typedef  int u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {int (* status ) (struct tpm_chip*) ;int req_complete_mask; int req_complete_val; int req_canceled; int /*<<< orphan*/  (* recv ) (struct tpm_chip*,int*,size_t) ;int /*<<< orphan*/  (* cancel ) (struct tpm_chip*) ;scalar_t__ irq; int /*<<< orphan*/  (* send ) (struct tpm_chip*,int*,size_t) ;} ;
struct tpm_chip {int /*<<< orphan*/  tpm_mutex; int /*<<< orphan*/  dev; TYPE_1__ vendor; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ECANCELED ; 
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_chip*,int*,size_t) ; 
 int FUNC7 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_chip*,int*,size_t) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 unsigned long FUNC11 (struct tpm_chip*,size_t) ; 

__attribute__((used)) static ssize_t FUNC12(struct tpm_chip *chip, const char *buf,
			    size_t bufsiz)
{
	ssize_t rc;
	u32 count, ordinal;
	unsigned long stop;

	count = FUNC0(*((__be32 *) (buf + 2)));
	ordinal = FUNC0(*((__be32 *) (buf + 6)));
	if (count == 0)
		return -ENODATA;
	if (count > bufsiz) {
		FUNC1(chip->dev,
			"invalid count value %x %zx \n", count, bufsiz);
		return -E2BIG;
	}

	FUNC3(&chip->tpm_mutex);

	if ((rc = chip->vendor.send(chip, (u8 *) buf, count)) < 0) {
		FUNC1(chip->dev,
			"tpm_transmit: tpm_send: error %zd\n", rc);
		goto out;
	}

	if (chip->vendor.irq)
		goto out_recv;

	stop = jiffies + FUNC11(chip, ordinal);
	do {
		u8 status = chip->vendor.status(chip);
		if ((status & chip->vendor.req_complete_mask) ==
		    chip->vendor.req_complete_val)
			goto out_recv;

		if (status == chip->vendor.req_canceled) {
			FUNC1(chip->dev, "Operation Canceled\n");
			rc = -ECANCELED;
			goto out;
		}

		FUNC2(TPM_TIMEOUT);	/* CHECK */
		FUNC5();
	} while (FUNC10(jiffies, stop));

	chip->vendor.cancel(chip);
	FUNC1(chip->dev, "Operation Timed out\n");
	rc = -ETIME;
	goto out;

out_recv:
	rc = chip->vendor.recv(chip, (u8 *) buf, bufsiz);
	if (rc < 0)
		FUNC1(chip->dev,
			"tpm_transmit: tpm_recv: error %zd\n", rc);
out:
	FUNC4(&chip->tpm_mutex);
	return rc;
}