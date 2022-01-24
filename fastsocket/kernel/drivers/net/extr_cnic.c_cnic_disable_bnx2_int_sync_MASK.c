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
struct cnic_local {int int_num; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; TYPE_1__* irq_arr; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_PCICFG_INT_ACK_CMD ; 
 int BNX2_PCICFG_INT_ACK_CMD_MASK_INT ; 
 int CNIC_DRV_STATE_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_eth_dev *ethdev = cp->ethdev;

	if (!(ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX))
		return;

	FUNC1(dev, BNX2_PCICFG_INT_ACK_CMD, cp->int_num |
		BNX2_PCICFG_INT_ACK_CMD_MASK_INT);
	FUNC0(dev, BNX2_PCICFG_INT_ACK_CMD);
	FUNC2(ethdev->irq_arr[0].vector);
}