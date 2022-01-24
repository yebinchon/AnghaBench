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
typedef  int u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_FW_IMG_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_BOOT_FROM_FLASH ; 
 int /*<<< orphan*/  QLC_83XX_IDC_CTRL ; 
 int QLC_83XX_IDC_GRACEFULL_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*) ; 
 scalar_t__ qlcnic_load_fw_file ; 

__attribute__((used)) static int FUNC9(struct qlcnic_adapter *adapter)
{
	u32 val;
	int err = -EIO;

	FUNC7(adapter);

	/* Collect FW register dump if required */
	val = FUNC0(adapter->ahw, QLC_83XX_IDC_CTRL);
	if (!(val & QLC_83XX_IDC_GRACEFULL_RESET))
		FUNC8(adapter);
	FUNC4(adapter);

	if (FUNC3(adapter))
		return err;
	/* Boot either flash image or firmware image from host file system */
	if (qlcnic_load_fw_file) {
		if (FUNC5(adapter))
			return err;
	} else {
		FUNC1(adapter, QLCNIC_FW_IMG_VALID,
				    QLC_83XX_BOOT_FROM_FLASH);
	}

	FUNC6(adapter);
	if (FUNC2(adapter))
		return -EIO;

	return 0;
}