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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int num_q_vectors; int /*<<< orphan*/  pdev; scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  watchdog_timer; TYPE_1__** q_vector; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_EN ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_EN ; 
 int /*<<< orphan*/  IGB_FLAG_NEED_LINK_UPDATE ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17(struct igb_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 tctl, rctl;
	int i;

	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer
	 */
	FUNC14(__IGB_DOWN, &adapter->state);

	/* disable receives in the hardware */
	rctl = FUNC13(E1000_RCTL);
	FUNC15(E1000_RCTL, rctl & ~E1000_RCTL_EN);
	/* flush and sleep below */

	FUNC11(netdev);

	/* disable transmits in the hardware */
	tctl = FUNC13(E1000_TCTL);
	tctl &= ~E1000_TCTL_EN;
	FUNC15(E1000_TCTL, tctl);
	/* flush both disables and wait for them to finish */
	FUNC16();
	FUNC7(10);

	FUNC3(adapter);

	adapter->flags &= ~IGB_FLAG_NEED_LINK_UPDATE;

	for (i = 0; i < adapter->num_q_vectors; i++) {
		FUNC9(&(adapter->q_vector[i]->napi));
		FUNC8(&(adapter->q_vector[i]->napi));
	}


	FUNC0(&adapter->watchdog_timer);
	FUNC0(&adapter->phy_info_timer);

	FUNC10(netdev);

	/* record the stats before reset*/
	FUNC6(adapter);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;

	if (!FUNC12(adapter->pdev))
		FUNC4(adapter);
	FUNC2(adapter);
	FUNC1(adapter);
#ifdef CONFIG_IGB_DCA

	/* since we reset the hardware DCA settings were cleared */
	igb_setup_dca(adapter);
#endif
}