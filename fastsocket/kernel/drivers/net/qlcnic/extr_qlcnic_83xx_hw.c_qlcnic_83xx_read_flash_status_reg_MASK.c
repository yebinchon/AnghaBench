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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_ADDR ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_CONTROL ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_OEM_READ_SIG ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_RDDATA ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_READ_CTRL ; 
 int FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_adapter *adapter)
{
	int ret;

	FUNC2(adapter, QLC_83XX_FLASH_ADDR,
				     QLC_83XX_FLASH_OEM_READ_SIG);
	FUNC2(adapter, QLC_83XX_FLASH_CONTROL,
				     QLC_83XX_FLASH_READ_CTRL);
	ret = FUNC0(adapter);
	if (ret)
		return -EIO;

	ret = FUNC1(adapter, QLC_83XX_FLASH_RDDATA);
	return ret & 0xFF;
}