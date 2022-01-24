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
struct TYPE_2__ {scalar_t__ base; } ;
struct tpm_chip {TYPE_1__ vendor; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 scalar_t__ NSC_STATUS ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 int FUNC0 (scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tpm_chip *chip, u8 mask, u8 val, u8 * data)
{
	unsigned long stop;

	/* status immediately available check */
	*data = FUNC0(chip->vendor.base + NSC_STATUS);
	if ((*data & mask) == val)
		return 0;

	/* wait for status */
	stop = jiffies + 10 * HZ;
	do {
		FUNC1(TPM_TIMEOUT);
		*data = FUNC0(chip->vendor.base + 1);
		if ((*data & mask) == val)
			return 0;
	}
	while (FUNC2(jiffies, stop));

	return -EBUSY;
}