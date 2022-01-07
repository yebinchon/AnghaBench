
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct fcoe_ctlr {int dummy; } ;
struct TYPE_2__ {int netdev; } ;


 TYPE_1__* bnx2fc_from_ctlr (struct fcoe_ctlr*) ;
 int dev_queue_xmit (struct sk_buff*) ;

__attribute__((used)) static void bnx2fc_fip_send(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 skb->dev = bnx2fc_from_ctlr(fip)->netdev;
 dev_queue_xmit(skb);
}
