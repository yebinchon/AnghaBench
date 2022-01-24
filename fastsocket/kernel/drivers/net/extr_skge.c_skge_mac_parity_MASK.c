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
struct skge_hw {scalar_t__ chip_id; scalar_t__ chip_rev; struct net_device** dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_heartbeat_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ CHIP_ID_GENESIS ; 
 scalar_t__ CHIP_ID_YUKON ; 
 int /*<<< orphan*/  GMF_CLI_TX_FC ; 
 int /*<<< orphan*/  GMF_CLI_TX_PE ; 
 int /*<<< orphan*/  MFF_CLR_PERR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_GMF_CTRL_T ; 
 int /*<<< orphan*/  TX_MFF_CTRL1 ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct skge_hw *hw, int port)
{
	struct net_device *dev = hw->dev[port];

	++dev->stats.tx_heartbeat_errors;

	if (hw->chip_id == CHIP_ID_GENESIS)
		FUNC1(hw, FUNC0(port, TX_MFF_CTRL1),
			     MFF_CLR_PERR);
	else
		/* HW-Bug #8: cleared by GMF_CLI_TX_FC instead of GMF_CLI_TX_PE */
		FUNC2(hw, FUNC0(port, TX_GMF_CTRL_T),
			    (hw->chip_id == CHIP_ID_YUKON && hw->chip_rev == 0)
			    ? GMF_CLI_TX_FC : GMF_CLI_TX_PE);
}