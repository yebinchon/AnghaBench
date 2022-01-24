#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  last_rx; TYPE_1__ dev; } ;
struct can_frame {scalar_t__ can_dlc; } ;
struct TYPE_6__ {int state; } ;
struct at91_priv {TYPE_3__ can; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int AT91_IRQ_BOFF ; 
 int AT91_IRQ_ERRA ; 
 int AT91_IRQ_ERRP ; 
 int AT91_IRQ_WARN ; 
 int /*<<< orphan*/  AT91_SR ; 
 int CAN_STATE_BUS_OFF ; 
 int CAN_STATE_ERROR_ACTIVE ; 
 int CAN_STATE_ERROR_PASSIVE ; 
 int CAN_STATE_ERROR_WARNING ; 
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct can_frame*,int) ; 
 int FUNC2 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC4 (int) ; 
 struct at91_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct at91_priv *priv = FUNC5(dev);
	struct sk_buff *skb;
	struct can_frame *cf;
	enum can_state new_state;
	u32 reg_sr;

	reg_sr = FUNC2(priv, AT91_SR);

	/* we need to look at the unmasked reg_sr */
	if (FUNC7(reg_sr & AT91_IRQ_BOFF))
		new_state = CAN_STATE_BUS_OFF;
	else if (FUNC7(reg_sr & AT91_IRQ_ERRP))
		new_state = CAN_STATE_ERROR_PASSIVE;
	else if (FUNC7(reg_sr & AT91_IRQ_WARN))
		new_state = CAN_STATE_ERROR_WARNING;
	else if (FUNC4(reg_sr & AT91_IRQ_ERRA))
		new_state = CAN_STATE_ERROR_ACTIVE;
	else {
		FUNC3(dev->dev.parent, "BUG! hardware in undefined state\n");
		return;
	}

	/* state hasn't changed */
	if (FUNC4(new_state == priv->can.state))
		return;

	skb = FUNC0(dev, &cf);
	if (FUNC7(!skb))
		return;

	FUNC1(dev, cf, new_state);
	FUNC6(skb);

	dev->last_rx = jiffies;
	dev->stats.rx_packets++;
	dev->stats.rx_bytes += cf->can_dlc;

	priv->can.state = new_state;
}