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
struct qlcnic_adapter {int flash_mfg_id; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_ADDR ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_CONTROL ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_RDDATA ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_READ_CTRL ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct qlcnic_adapter *adapter)
{
	int ret, mfg_id;

	if (FUNC0(adapter))
		return -EIO;

	FUNC4(adapter, QLC_83XX_FLASH_ADDR,
				     QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL);
	FUNC4(adapter, QLC_83XX_FLASH_CONTROL,
				     QLC_83XX_FLASH_READ_CTRL);
	ret = FUNC1(adapter);
	if (ret) {
		FUNC3(adapter);
		return -EIO;
	}

	mfg_id = FUNC2(adapter, QLC_83XX_FLASH_RDDATA);
	if (mfg_id == -EIO)
		return -EIO;

	adapter->flash_mfg_id = (mfg_id & 0xFF);
	FUNC3(adapter);

	return 0;
}