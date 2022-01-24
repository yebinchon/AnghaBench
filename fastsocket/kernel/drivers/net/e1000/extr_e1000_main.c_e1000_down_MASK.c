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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  napi; struct net_device* netdev; struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_RCTL_EN ; 
 int E1000_TCTL_EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

void FUNC12(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	u32 rctl, tctl;


	/* disable receives in the hardware */
	rctl = FUNC6(RCTL);
	FUNC7(RCTL, rctl & ~E1000_RCTL_EN);
	/* flush and sleep below */

	FUNC11(netdev);

	/* disable transmits in the hardware */
	tctl = FUNC6(TCTL);
	tctl &= ~E1000_TCTL_EN;
	FUNC7(TCTL, tctl);
	/* flush both disables and wait for them to finish */
	FUNC0();
	FUNC8(10);

	FUNC9(&adapter->napi);

	FUNC4(adapter);

	/*
	 * Setting DOWN must be after irq_disable to prevent
	 * a screaming interrupt.  Setting DOWN also prevents
	 * tasks from rescheduling.
	 */
	FUNC3(adapter);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;
	FUNC10(netdev);

	FUNC5(adapter);
	FUNC2(adapter);
	FUNC1(adapter);
}