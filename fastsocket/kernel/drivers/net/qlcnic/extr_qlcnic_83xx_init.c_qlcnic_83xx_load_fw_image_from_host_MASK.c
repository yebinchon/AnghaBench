#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {TYPE_3__* pdev; TYPE_2__* ahw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw; } ;
struct TYPE_5__ {TYPE_1__ fw_info; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_FW_IMG_VALID ; 
 int /*<<< orphan*/  QLC_83XX_BOOT_FROM_FILE ; 
 int /*<<< orphan*/  QLC_83XX_BOOT_FROM_FLASH ; 
 int /*<<< orphan*/  QLC_83XX_FW_FILE_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	int err = -EIO;

	if (FUNC3(&adapter->ahw->fw_info.fw,
			     QLC_83XX_FW_FILE_NAME, &(adapter->pdev->dev))) {
		FUNC1(&adapter->pdev->dev,
			"No file FW image, loading flash FW image.\n");
		FUNC0(adapter, QLCNIC_FW_IMG_VALID,
				    QLC_83XX_BOOT_FROM_FLASH);
	} else {
		if (FUNC2(adapter))
			return err;
		FUNC0(adapter, QLCNIC_FW_IMG_VALID,
				    QLC_83XX_BOOT_FROM_FILE);
	}

	return 0;
}