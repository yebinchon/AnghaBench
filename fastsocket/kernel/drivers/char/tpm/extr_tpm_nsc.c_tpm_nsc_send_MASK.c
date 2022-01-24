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
struct TYPE_2__ {scalar_t__ base; } ;
struct tpm_chip {TYPE_1__ vendor; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ NSC_COMMAND ; 
 int /*<<< orphan*/  NSC_COMMAND_CANCEL ; 
 int /*<<< orphan*/  NSC_COMMAND_EOC ; 
 int /*<<< orphan*/  NSC_COMMAND_NORMAL ; 
 scalar_t__ NSC_DATA ; 
 int /*<<< orphan*/  NSC_STATUS_IBF ; 
 int /*<<< orphan*/  NSC_STATUS_IBR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip, u8 * buf, size_t count)
{
	u8 data;
	int i;

	/*
	 * If we hit the chip with back to back commands it locks up
	 * and never set IBF. Hitting it with this "hammer" seems to
	 * fix it. Not sure why this is needed, we followed the flow
	 * chart in the manual to the letter.
	 */
	FUNC2(NSC_COMMAND_CANCEL, chip->vendor.base + NSC_COMMAND);

	if (FUNC1(chip) != 0)
		return -EIO;

	if (FUNC3(chip, NSC_STATUS_IBF, 0, &data) < 0) {
		FUNC0(chip->dev, "IBF timeout\n");
		return -EIO;
	}

	FUNC2(NSC_COMMAND_NORMAL, chip->vendor.base + NSC_COMMAND);
	if (FUNC3(chip, NSC_STATUS_IBR, NSC_STATUS_IBR, &data) < 0) {
		FUNC0(chip->dev, "IBR timeout\n");
		return -EIO;
	}

	for (i = 0; i < count; i++) {
		if (FUNC3(chip, NSC_STATUS_IBF, 0, &data) < 0) {
			FUNC0(chip->dev,
				"IBF timeout (while writing data)\n");
			return -EIO;
		}
		FUNC2(buf[i], chip->vendor.base + NSC_DATA);
	}

	if (FUNC3(chip, NSC_STATUS_IBF, 0, &data) < 0) {
		FUNC0(chip->dev, "IBF timeout\n");
		return -EIO;
	}
	FUNC2(NSC_COMMAND_EOC, chip->vendor.base + NSC_COMMAND);

	return count;
}