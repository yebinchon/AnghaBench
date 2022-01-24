#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {TYPE_3__ mac; } ;
struct igb_adapter {int /*<<< orphan*/  flags; TYPE_2__* netdev; TYPE_1__* pdev; scalar_t__ ptp_clock; int /*<<< orphan*/ * ptp_tx_skb; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  ptp_overflow_work; TYPE_4__ hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGB_FLAG_PTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
#define  e1000_82576 133 
#define  e1000_82580 132 
#define  e1000_i210 131 
#define  e1000_i211 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct igb_adapter *adapter)
{
	switch (adapter->hw.mac.type) {
	case e1000_82576:
	case e1000_82580:
	case e1000_i354:
	case e1000_i350:
		FUNC0(&adapter->ptp_overflow_work);
		break;
	case e1000_i210:
	case e1000_i211:
		/* No delayed work to cancel. */
		break;
	default:
		return;
	}

	FUNC1(&adapter->ptp_tx_work);
	if (adapter->ptp_tx_skb) {
		FUNC3(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
	}

	if (adapter->ptp_clock) {
		FUNC4(adapter->ptp_clock);
		FUNC2(&adapter->pdev->dev, "removed PHC on %s\n",
			 adapter->netdev->name);
		adapter->flags &= ~IGB_FLAG_PTP;
	}
}