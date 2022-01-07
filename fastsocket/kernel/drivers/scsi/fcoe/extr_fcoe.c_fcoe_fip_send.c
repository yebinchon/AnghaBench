
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct fcoe_ctlr {int lp; } ;
struct TYPE_2__ {int netdev; } ;


 TYPE_1__* fcoe_from_ctlr (struct fcoe_ctlr*) ;
 int fcoe_port_send (int ,struct sk_buff*) ;
 int lport_priv (int ) ;

__attribute__((used)) static void fcoe_fip_send(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 skb->dev = fcoe_from_ctlr(fip)->netdev;
 fcoe_port_send(lport_priv(fip->lp), skb);
}
