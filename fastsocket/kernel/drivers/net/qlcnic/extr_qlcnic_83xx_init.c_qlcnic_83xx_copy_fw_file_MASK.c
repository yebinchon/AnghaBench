#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_4__* ahw; TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_3__* fw; } ;
struct TYPE_8__ {TYPE_2__ fw_info; } ;
struct TYPE_7__ {int size; scalar_t__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_FW_IMAGE_ADDR ; 
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct qlcnic_adapter*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	u32 dest, *p_cache;
	u64 addr;
	u8 data[16];
	size_t size;
	int i, ret = -EIO;

	dest = FUNC0(adapter->ahw, QLCNIC_FW_IMAGE_ADDR);
	size = (adapter->ahw->fw_info.fw->size & ~0xF);
	p_cache = (u32 *)adapter->ahw->fw_info.fw->data;
	addr = (u64)dest;

	ret = FUNC2(adapter, addr,
					  (u32 *)p_cache, size / 16);
	if (ret) {
		FUNC1(&adapter->pdev->dev, "MS memory write failed\n");
		FUNC3(adapter->ahw->fw_info.fw);
		adapter->ahw->fw_info.fw = NULL;
		return -EIO;
	}

	/* alignment check */
	if (adapter->ahw->fw_info.fw->size & 0xF) {
		addr = dest + size;
		for (i = 0; i < (adapter->ahw->fw_info.fw->size & 0xF); i++)
			data[i] = adapter->ahw->fw_info.fw->data[size + i];
		for (; i < 16; i++)
			data[i] = 0;
		ret = FUNC2(adapter, addr,
						  (u32 *)data, 1);
		if (ret) {
			FUNC1(&adapter->pdev->dev,
				"MS memory write failed\n");
			FUNC3(adapter->ahw->fw_info.fw);
			adapter->ahw->fw_info.fw = NULL;
			return -EIO;
		}
	}
	FUNC3(adapter->ahw->fw_info.fw);
	adapter->ahw->fw_info.fw = NULL;

	return 0;
}