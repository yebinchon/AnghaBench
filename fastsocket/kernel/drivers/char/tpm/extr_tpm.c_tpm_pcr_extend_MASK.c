#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  pcr_idx; } ;
struct TYPE_9__ {TYPE_5__ pcrextend_in; } ;
struct TYPE_8__ {int /*<<< orphan*/  in; } ;
struct tpm_cmd_t {TYPE_4__ params; TYPE_3__ header; } ;
struct tpm_chip {TYPE_2__* dev; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  EXTEND_PCR_RESULT_SIZE ; 
 int /*<<< orphan*/  TPM_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcrextend_header ; 
 struct tpm_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tpm_chip*,struct tpm_cmd_t*,int /*<<< orphan*/ ,char*) ; 

int FUNC5(u32 chip_num, int pcr_idx, const u8 *hash)
{
	struct tpm_cmd_t cmd;
	int rc;
	struct tpm_chip *chip;

	chip = FUNC3(chip_num);
	if (chip == NULL)
		return -ENODEV;

	cmd.header.in = pcrextend_header;
	cmd.params.pcrextend_in.pcr_idx = FUNC0(pcr_idx);
	FUNC1(cmd.params.pcrextend_in.hash, hash, TPM_DIGEST_SIZE);
	rc = FUNC4(chip, &cmd, EXTEND_PCR_RESULT_SIZE,
			  "attempting extend a PCR value");

	FUNC2(chip->dev->driver->owner);
	return rc;
}