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
typedef  int u8 ;
struct tpm_chip {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  savestate ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int ENODEV ; 
 struct tpm_chip* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*,int*,int) ; 

int FUNC2(struct device *dev, pm_message_t pm_state)
{
	struct tpm_chip *chip = FUNC0(dev);
	u8 savestate[] = {
		0, 193,		/* TPM_TAG_RQU_COMMAND */
		0, 0, 0, 10,	/* blob length (in bytes) */
		0, 0, 0, 152	/* TPM_ORD_SaveState */
	};

	if (chip == NULL)
		return -ENODEV;

	FUNC1(chip, savestate, sizeof(savestate));
	return 0;
}