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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QLC_83XX_FLASH_DIRECT_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct qlcnic_adapter *adapter, u32 flash_addr,
			     u8 *p_data, int count)
{
	int i, ret;
	u32 word, addr = flash_addr;
	ulong  indirect_addr;

	if (FUNC2(adapter) != 0)
		return -EIO;

	if (addr & 0x3) {
		FUNC1(&adapter->pdev->dev, "Illegal addr = 0x%x\n", addr);
		FUNC4(adapter);
		return -EIO;
	}

	for (i = 0; i < count; i++) {
		if (FUNC5(adapter,
						 QLC_83XX_FLASH_DIRECT_WINDOW,
						 (addr))) {
			FUNC4(adapter);
			return -EIO;
		}

		indirect_addr = FUNC0(addr);
		ret = FUNC3(adapter,
						  indirect_addr);
		if (ret == -EIO)
			return -EIO;
		word = ret;
		*(u32 *)p_data  = word;
		p_data = p_data + 4;
		addr = addr + 4;
	}

	FUNC4(adapter);

	return 0;
}