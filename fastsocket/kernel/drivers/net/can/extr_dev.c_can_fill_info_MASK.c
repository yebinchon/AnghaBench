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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct can_ctrlmode {int /*<<< orphan*/  flags; } ;
struct can_priv {int state; int restart_ms; struct can_ctrlmode* bittiming_const; struct can_ctrlmode clock; struct can_ctrlmode bittiming; int /*<<< orphan*/  (* do_get_state ) (struct net_device const*,int*) ;int /*<<< orphan*/  ctrlmode; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;
typedef  int /*<<< orphan*/  cm ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_CAN_BITTIMING ; 
 int /*<<< orphan*/  IFLA_CAN_BITTIMING_CONST ; 
 int /*<<< orphan*/  IFLA_CAN_CLOCK ; 
 int /*<<< orphan*/  IFLA_CAN_CTRLMODE ; 
 int /*<<< orphan*/  IFLA_CAN_RESTART_MS ; 
 int /*<<< orphan*/  IFLA_CAN_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct can_ctrlmode*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct can_priv* FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device const*,int*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct net_device *dev)
{
	struct can_priv *priv = FUNC2(dev);
	struct can_ctrlmode cm = {.flags = priv->ctrlmode};
	enum can_state state = priv->state;

	if (priv->do_get_state)
		priv->do_get_state(dev, &state);
	FUNC1(skb, IFLA_CAN_STATE, state);
	FUNC0(skb, IFLA_CAN_CTRLMODE, sizeof(cm), &cm);
	FUNC1(skb, IFLA_CAN_RESTART_MS, priv->restart_ms);
	FUNC0(skb, IFLA_CAN_BITTIMING,
		sizeof(priv->bittiming), &priv->bittiming);
	FUNC0(skb, IFLA_CAN_CLOCK, sizeof(cm), &priv->clock);
	if (priv->bittiming_const)
		FUNC0(skb, IFLA_CAN_BITTIMING_CONST,
			sizeof(*priv->bittiming_const), priv->bittiming_const);

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}