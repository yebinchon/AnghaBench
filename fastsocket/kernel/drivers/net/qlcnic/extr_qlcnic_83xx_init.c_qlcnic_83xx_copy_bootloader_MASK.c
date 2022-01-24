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
typedef  void* u64 ;
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; int /*<<< orphan*/  ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QLCNIC_BOOTLOADER_ADDR ; 
 int /*<<< orphan*/  QLCNIC_BOOTLOADER_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int QLC_83XX_BOOTLOADER_FLASH_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct qlcnic_adapter*,void*,int*,int) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter)
{
	u8 *p_cache;
	u32 src, size;
	u64 dest;
	int ret = -EIO;

	src = QLC_83XX_BOOTLOADER_FLASH_ADDR;
	dest = FUNC0(adapter->ahw, QLCNIC_BOOTLOADER_ADDR);
	size = FUNC0(adapter->ahw, QLCNIC_BOOTLOADER_SIZE);

	/* alignment check */
	if (size & 0xF)
		size = (size + 16) & ~0xF;

	p_cache = FUNC3(size, GFP_KERNEL);

	if (p_cache == NULL) {
		FUNC1(&adapter->pdev->dev,
			"Failed to allocate memory for boot loader cache\n");
		return -ENOMEM;
	}
	ret = FUNC4(adapter, src, p_cache,
						size / sizeof(u32));
	if (ret) {
		FUNC2(p_cache);
		return ret;
	}
	/* 16 byte write to MS memory */
	ret = FUNC5(adapter, dest, (u32 *)p_cache,
					  size / 16);
	if (ret) {
		FUNC2(p_cache);
		return ret;
	}
	FUNC2(p_cache);

	return ret;
}