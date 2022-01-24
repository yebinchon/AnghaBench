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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ehea_mr {struct ehea_adapter* adapter; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  handle; int /*<<< orphan*/  lkey; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; int /*<<< orphan*/  pd; } ;
struct TYPE_2__ {int /*<<< orphan*/ * top; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHEA_BUSMAP_START ; 
 unsigned long EHEA_MAP_ENTRIES ; 
 int /*<<< orphan*/  EHEA_MR_ACC_CTRL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FORCE_FREE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H_PAGE_REGISTERED ; 
 scalar_t__ H_SUCCESS ; 
 TYPE_1__* ehea_bmap ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehea_mr_len ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__*,struct ehea_adapter*,struct ehea_mr*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ehea_adapter *adapter, struct ehea_mr *mr)
{
	int ret;
	u64 *pt;
	u64 hret;
	u32 acc_ctrl = EHEA_MR_ACC_CTRL;

	unsigned long top;

	pt = (void *)FUNC5(GFP_KERNEL);
	if (!pt) {
		FUNC0("no mem");
		ret = -ENOMEM;
		goto out;
	}

	hret = FUNC1(adapter->handle, EHEA_BUSMAP_START,
					ehea_mr_len, acc_ctrl, adapter->pd,
					&mr->handle, &mr->lkey);

	if (hret != H_SUCCESS) {
		FUNC0("alloc_resource_mr failed");
		ret = -EIO;
		goto out;
	}

	if (!ehea_bmap) {
		FUNC2(adapter->handle, mr->handle, FORCE_FREE);
		FUNC0("no busmap available");
		ret = -EIO;
		goto out;
	}

	for (top = 0; top < EHEA_MAP_ENTRIES; top++) {
		if (!ehea_bmap->top[top])
			continue;

		hret = FUNC3(top, pt, adapter, mr);
		if((hret != H_PAGE_REGISTERED) && (hret != H_SUCCESS))
			break;
	}

	if (hret != H_SUCCESS) {
		FUNC2(adapter->handle, mr->handle, FORCE_FREE);
		FUNC0("registering mr failed");
		ret = -EIO;
		goto out;
	}

	mr->vaddr = EHEA_BUSMAP_START;
	mr->adapter = adapter;
	ret = 0;
out:
	FUNC4((unsigned long)pt);
	return ret;
}