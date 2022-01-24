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
struct sdhci_pci_chip {TYPE_1__* pdev; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  O2_SD_ADMA1 ; 
 int /*<<< orphan*/  O2_SD_ADMA2 ; 
 int /*<<< orphan*/  O2_SD_CAPS ; 
 int /*<<< orphan*/  O2_SD_CLKREQ ; 
 int /*<<< orphan*/  O2_SD_INF_MOD ; 
 int /*<<< orphan*/  O2_SD_LOCK_WP ; 
 int /*<<< orphan*/  O2_SD_MULTI_VCC3V ; 
#define  PCI_DEVICE_ID_O2_8220 131 
#define  PCI_DEVICE_ID_O2_8221 130 
#define  PCI_DEVICE_ID_O2_8320 129 
#define  PCI_DEVICE_ID_O2_8321 128 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct sdhci_pci_chip *chip)
{
	int ret;
	u8 scratch;

	switch (chip->pdev->device) {
	case PCI_DEVICE_ID_O2_8220:
	case PCI_DEVICE_ID_O2_8221:
	case PCI_DEVICE_ID_O2_8320:
	case PCI_DEVICE_ID_O2_8321:
		/* This extra setup is required due to broken ADMA. */
		ret = FUNC0(chip->pdev, O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;
		scratch &= 0x7f;
		FUNC1(chip->pdev, O2_SD_LOCK_WP, scratch);

		/* Set Multi 3 to VCC3V# */
		FUNC1(chip->pdev, O2_SD_MULTI_VCC3V, 0x08);

		/* Disable CLK_REQ# support after media DET */
		ret = FUNC0(chip->pdev, O2_SD_CLKREQ, &scratch);
		if (ret)
			return ret;
		scratch |= 0x20;
		FUNC1(chip->pdev, O2_SD_CLKREQ, scratch);

		/* Choose capabilities, enable SDMA.  We have to write 0x01
		 * to the capabilities register first to unlock it.
		 */
		ret = FUNC0(chip->pdev, O2_SD_CAPS, &scratch);
		if (ret)
			return ret;
		scratch |= 0x01;
		FUNC1(chip->pdev, O2_SD_CAPS, scratch);
		FUNC1(chip->pdev, O2_SD_CAPS, 0x73);

		/* Disable ADMA1/2 */
		FUNC1(chip->pdev, O2_SD_ADMA1, 0x39);
		FUNC1(chip->pdev, O2_SD_ADMA2, 0x08);

		/* Disable the infinite transfer mode */
		ret = FUNC0(chip->pdev, O2_SD_INF_MOD, &scratch);
		if (ret)
			return ret;
		scratch |= 0x08;
		FUNC1(chip->pdev, O2_SD_INF_MOD, scratch);

		/* Lock WP */
		ret = FUNC0(chip->pdev, O2_SD_LOCK_WP, &scratch);
		if (ret)
			return ret;
		scratch |= 0x80;
		FUNC1(chip->pdev, O2_SD_LOCK_WP, scratch);
	}

	return 0;
}