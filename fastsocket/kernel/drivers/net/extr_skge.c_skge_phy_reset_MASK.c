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
struct skge_port {int port; int /*<<< orphan*/  netdev; struct skge_hw* hw; } ;
struct skge_hw {scalar_t__ chip_id; int /*<<< orphan*/  phy_lock; struct net_device** dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHIP_ID_GENESIS ; 
 int /*<<< orphan*/  FUNC0 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct skge_hw*,int) ; 

__attribute__((used)) static void FUNC9(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	struct net_device *dev = hw->dev[port];

	FUNC3(skge->netdev);
	FUNC2(skge->netdev);

	FUNC5(&hw->phy_lock);
	if (hw->chip_id == CHIP_ID_GENESIS) {
		FUNC1(hw, port);
		FUNC0(hw, port);
	} else {
		FUNC8(hw, port);
		FUNC7(hw, port);
	}
	FUNC6(&hw->phy_lock);

	FUNC4(dev);
}