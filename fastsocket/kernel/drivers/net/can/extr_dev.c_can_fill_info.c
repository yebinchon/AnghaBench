
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct can_ctrlmode {int flags; } ;
struct can_priv {int state; int restart_ms; struct can_ctrlmode* bittiming_const; struct can_ctrlmode clock; struct can_ctrlmode bittiming; int (* do_get_state ) (struct net_device const*,int*) ;int ctrlmode; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;
typedef int cm ;


 int EMSGSIZE ;
 int IFLA_CAN_BITTIMING ;
 int IFLA_CAN_BITTIMING_CONST ;
 int IFLA_CAN_CLOCK ;
 int IFLA_CAN_CTRLMODE ;
 int IFLA_CAN_RESTART_MS ;
 int IFLA_CAN_STATE ;
 int NLA_PUT (struct sk_buff*,int ,int,struct can_ctrlmode*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 struct can_priv* netdev_priv (struct net_device const*) ;
 int stub1 (struct net_device const*,int*) ;

__attribute__((used)) static int can_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);
 struct can_ctrlmode cm = {.flags = priv->ctrlmode};
 enum can_state state = priv->state;

 if (priv->do_get_state)
  priv->do_get_state(dev, &state);
 NLA_PUT_U32(skb, IFLA_CAN_STATE, state);
 NLA_PUT(skb, IFLA_CAN_CTRLMODE, sizeof(cm), &cm);
 NLA_PUT_U32(skb, IFLA_CAN_RESTART_MS, priv->restart_ms);
 NLA_PUT(skb, IFLA_CAN_BITTIMING,
  sizeof(priv->bittiming), &priv->bittiming);
 NLA_PUT(skb, IFLA_CAN_CLOCK, sizeof(cm), &priv->clock);
 if (priv->bittiming_const)
  NLA_PUT(skb, IFLA_CAN_BITTIMING_CONST,
   sizeof(*priv->bittiming_const), priv->bittiming_const);

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
