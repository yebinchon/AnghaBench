#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {scalar_t__ flash_mfg_id; TYPE_2__* ahw; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {scalar_t__ mfg_id; } ;
struct TYPE_4__ {TYPE_1__ fdt; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned char* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,size_t) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC8(struct qlcnic_adapter *adapter,
					 char *buf, loff_t offset, size_t size)
{
	int  i, ret, count;
	unsigned char *p_cache, *p_src;

	p_cache = FUNC0(size, sizeof(unsigned char), GFP_KERNEL);
	if (!p_cache)
		return -ENOMEM;

	FUNC2(p_cache, buf, size);
	p_src = p_cache;
	count = size / sizeof(u32);

	if (FUNC6(adapter) != 0) {
		FUNC1(p_cache);
		return -EIO;
	}

	if (adapter->ahw->fdt.mfg_id == adapter->flash_mfg_id) {
		ret = FUNC4(adapter);
		if (ret) {
			FUNC1(p_cache);
			FUNC7(adapter);
			return -EIO;
		}
	}

	for (i = 0; i < count; i++) {
		ret = FUNC5(adapter, offset, (u32 *)p_src);
		if (ret) {
			if (adapter->ahw->fdt.mfg_id == adapter->flash_mfg_id) {
				ret = FUNC3(adapter);
				if (ret) {
					FUNC1(p_cache);
					FUNC7(adapter);
					return -EIO;
				}
			}
			FUNC1(p_cache);
			FUNC7(adapter);
			return -EIO;
		}

		p_src = p_src + sizeof(u32);
		offset = offset + sizeof(u32);
	}

	if (adapter->ahw->fdt.mfg_id == adapter->flash_mfg_id) {
		ret = FUNC3(adapter);
		if (ret) {
			FUNC1(p_cache);
			FUNC7(adapter);
			return -EIO;
		}
	}

	FUNC1(p_cache);
	FUNC7(adapter);

	return 0;
}