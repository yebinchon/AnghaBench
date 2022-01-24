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
struct TYPE_2__ {unsigned long timeout_a; int /*<<< orphan*/  int_queue; scalar_t__ irq; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TPM_ACCESS_REQUEST_USE ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 scalar_t__ FUNC1 (struct tpm_chip*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 long FUNC5 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct tpm_chip *chip, int l)
{
	unsigned long stop;
	long rc;

	if (FUNC1(chip, l) >= 0)
		return l;

	FUNC2(TPM_ACCESS_REQUEST_USE,
		 chip->vendor.iobase + FUNC0(l));

	if (chip->vendor.irq) {
		rc = FUNC5(chip->vendor.int_queue,
						      (FUNC1
						       (chip, l) >= 0),
						      chip->vendor.timeout_a);
		if (rc > 0)
			return l;

	} else {
		/* wait for burstcount */
		stop = jiffies + chip->vendor.timeout_a;
		do {
			if (FUNC1(chip, l) >= 0)
				return l;
			FUNC3(TPM_TIMEOUT);
		}
		while (FUNC4(jiffies, stop));
	}
	return -1;
}