#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tpm_chip {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  num_pcrs; } ;
typedef  TYPE_1__ cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_CAP_PROP_PCR ; 
 int TPM_DIGEST_SIZE ; 
 int FUNC0 (struct tpm_chip*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tpm_chip* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 

ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
		      char *buf)
{
	cap_t cap;
	u8 digest[TPM_DIGEST_SIZE];
	ssize_t rc;
	int i, j, num_pcrs;
	char *str = buf;
	struct tpm_chip *chip = FUNC2(dev);

	rc = FUNC4(dev, TPM_CAP_PROP_PCR, &cap,
			"attempting to determine the number of PCRS");
	if (rc)
		return 0;

	num_pcrs = FUNC1(cap.num_pcrs);
	for (i = 0; i < num_pcrs; i++) {
		rc = FUNC0(chip, i, digest);
		if (rc)
			break;
		str += FUNC3(str, "PCR-%02d: ", i);
		for (j = 0; j < TPM_DIGEST_SIZE; j++)
			str += FUNC3(str, "%02X ", digest[j]);
		str += FUNC3(str, "\n");
	}
	return str - buf;
}