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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {scalar_t__ heartbeat; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (scalar_t__) ; 
 int QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT ; 
 int /*<<< orphan*/  QLCNIC_HEARTBEAT_PERIOD_MSECS ; 
 int /*<<< orphan*/  QLCNIC_PEG_ALIVE_COUNTER ; 
 int /*<<< orphan*/  QLCNIC_PEG_HALT_STATUS1 ; 
 int /*<<< orphan*/  QLCNIC_PEG_HALT_STATUS2 ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_CRB_PEG_NET_0 ; 
 int /*<<< orphan*/  QLC_83XX_CRB_PEG_NET_1 ; 
 int /*<<< orphan*/  QLC_83XX_CRB_PEG_NET_2 ; 
 int /*<<< orphan*/  QLC_83XX_CRB_PEG_NET_3 ; 
 int /*<<< orphan*/  QLC_83XX_CRB_PEG_NET_4 ; 
 void* FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC8(struct qlcnic_adapter *p_dev)
{
	u32 heartbeat, peg_status;
	int retries, ret = -EIO;

	retries = QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT;
	p_dev->heartbeat = FUNC2(p_dev,
					       QLCNIC_PEG_ALIVE_COUNTER);

	do {
		FUNC5(QLCNIC_HEARTBEAT_PERIOD_MSECS);
		heartbeat = FUNC2(p_dev,
						QLCNIC_PEG_ALIVE_COUNTER);
		if (heartbeat != p_dev->heartbeat) {
			ret = QLCNIC_RCODE_SUCCESS;
			break;
		}
	} while (--retries);

	if (ret) {
		FUNC3(&p_dev->pdev->dev, "firmware hang detected\n");
		FUNC7(p_dev);
		FUNC6(p_dev);
		peg_status = FUNC2(p_dev,
						 QLCNIC_PEG_HALT_STATUS1);
		FUNC4(&p_dev->pdev->dev, "Dumping HW/FW registers\n"
			 "PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\n"
			 "PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\n"
			 "PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\n"
			 "PEG_NET_4_PC: 0x%x\n", peg_status,
			 FUNC2(p_dev, QLCNIC_PEG_HALT_STATUS2),
			 FUNC1(p_dev, QLC_83XX_CRB_PEG_NET_0),
			 FUNC1(p_dev, QLC_83XX_CRB_PEG_NET_1),
			 FUNC1(p_dev, QLC_83XX_CRB_PEG_NET_2),
			 FUNC1(p_dev, QLC_83XX_CRB_PEG_NET_3),
			 FUNC1(p_dev, QLC_83XX_CRB_PEG_NET_4));

		if (FUNC0(peg_status) == 0x67)
			FUNC3(&p_dev->pdev->dev,
				"Device is being reset err code 0x00006700.\n");
	}

	return ret;
}