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
struct TYPE_2__ {int /*<<< orphan*/  locality; scalar_t__ iobase; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  timeout_c; } ;
struct tpm_chip {TYPE_1__ vendor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TPM_STS_DATA_AVAIL ; 
 int TPM_STS_VALID ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct tpm_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip, u8 *buf, size_t count)
{
	int size = 0, burstcnt;
	while (size < count &&
	       FUNC3(chip,
				 TPM_STS_DATA_AVAIL | TPM_STS_VALID,
				 chip->vendor.timeout_c,
				 &chip->vendor.read_queue)
	       == 0) {
		burstcnt = FUNC1(chip);
		for (; burstcnt > 0 && size < count; burstcnt--)
			buf[size++] = FUNC2(chip->vendor.iobase +
					      FUNC0(chip->vendor.
							    locality));
	}
	return size;
}