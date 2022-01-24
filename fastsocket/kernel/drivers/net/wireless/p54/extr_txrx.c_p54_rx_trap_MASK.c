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
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_trap {int /*<<< orphan*/  frequency; int /*<<< orphan*/  event; } ;
struct p54_hdr {scalar_t__ data; } ;
struct p54_common {TYPE_1__* hw; int /*<<< orphan*/  vif; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
#define  P54_TRAP_BEACON_TX 135 
#define  P54_TRAP_FAA_RADIO_OFF 134 
#define  P54_TRAP_FAA_RADIO_ON 133 
#define  P54_TRAP_NO_BEACON 132 
#define  P54_TRAP_RADAR 131 
#define  P54_TRAP_SCAN 130 
#define  P54_TRAP_TBTT 129 
#define  P54_TRAP_TIMER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct p54_common *priv, struct sk_buff *skb)
{
	struct p54_hdr *hdr = (struct p54_hdr *) skb->data;
	struct p54_trap *trap = (struct p54_trap *) hdr->data;
	u16 event = FUNC1(trap->event);
	u16 freq = FUNC1(trap->frequency);

	switch (event) {
	case P54_TRAP_BEACON_TX:
		break;
	case P54_TRAP_RADAR:
		FUNC2(priv->hw->wiphy, "radar (freq:%d MHz)\n", freq);
		break;
	case P54_TRAP_NO_BEACON:
		if (priv->vif)
			FUNC0(priv->vif);
		break;
	case P54_TRAP_SCAN:
		break;
	case P54_TRAP_TBTT:
		break;
	case P54_TRAP_TIMER:
		break;
	case P54_TRAP_FAA_RADIO_OFF:
		FUNC3(priv->hw->wiphy, true);
		break;
	case P54_TRAP_FAA_RADIO_ON:
		FUNC3(priv->hw->wiphy, false);
		break;
	default:
		FUNC2(priv->hw->wiphy, "received event:%x freq:%d\n",
			   event, freq);
		break;
	}
}