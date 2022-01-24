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
typedef  int u64 ;
typedef  int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  mem_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int MAX_CTL_CHECK ; 
 int /*<<< orphan*/  QLCNIC_ADDR_DDR_NET ; 
 int /*<<< orphan*/  QLCNIC_ADDR_DDR_NET_MAX ; 
 int /*<<< orphan*/  QLCNIC_ADDR_QDR_NET ; 
 int /*<<< orphan*/  QLCNIC_ADDR_QDR_NET_MAX ; 
 int /*<<< orphan*/  QLCNIC_MS_ADDR_HI ; 
 int /*<<< orphan*/  QLCNIC_MS_ADDR_LO ; 
 int /*<<< orphan*/  QLCNIC_MS_CTRL ; 
 int /*<<< orphan*/  QLCNIC_MS_WRTDATA_HI ; 
 int /*<<< orphan*/  QLCNIC_MS_WRTDATA_LO ; 
 int /*<<< orphan*/  QLCNIC_MS_WRTDATA_UHI ; 
 int /*<<< orphan*/  QLCNIC_MS_WRTDATA_ULO ; 
 int QLCNIC_TA_WRITE_ENABLE ; 
 int QLCNIC_TA_WRITE_START ; 
 int TA_CTL_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct qlcnic_adapter *adapter, u64 addr,
				u32 *data, u32 count)
{
	int i, j, ret = 0;
	u32 temp;

	/* Check alignment */
	if (addr & 0xF)
		return -EIO;

	FUNC2(&adapter->ahw->mem_lock);
	FUNC6(adapter, QLCNIC_MS_ADDR_HI, 0);

	for (i = 0; i < count; i++, addr += 16) {
		if (!((FUNC0(addr, QLCNIC_ADDR_QDR_NET,
				     QLCNIC_ADDR_QDR_NET_MAX)) ||
		      (FUNC0(addr, QLCNIC_ADDR_DDR_NET,
				     QLCNIC_ADDR_DDR_NET_MAX)))) {
			FUNC3(&adapter->ahw->mem_lock);
			return -EIO;
		}

		FUNC6(adapter, QLCNIC_MS_ADDR_LO, addr);
		FUNC6(adapter, QLCNIC_MS_WRTDATA_LO,
					     *data++);
		FUNC6(adapter, QLCNIC_MS_WRTDATA_HI,
					     *data++);
		FUNC6(adapter, QLCNIC_MS_WRTDATA_ULO,
					     *data++);
		FUNC6(adapter, QLCNIC_MS_WRTDATA_UHI,
					     *data++);
		FUNC6(adapter, QLCNIC_MS_CTRL,
					     QLCNIC_TA_WRITE_ENABLE);
		FUNC6(adapter, QLCNIC_MS_CTRL,
					     QLCNIC_TA_WRITE_START);

		for (j = 0; j < MAX_CTL_CHECK; j++) {
			temp = FUNC5(adapter,
							   QLCNIC_MS_CTRL);
			if ((temp & TA_CTL_BUSY) == 0)
				break;
		}

		/* Status check failure */
		if (j >= MAX_CTL_CHECK) {
			if (FUNC4()) {
				FUNC1(&adapter->pdev->dev,
					"MS memory write failed.\n");
				FUNC3(&adapter->ahw->mem_lock);
				return -EIO;
			}
		}
	}

	FUNC3(&adapter->ahw->mem_lock);

	return ret;
}