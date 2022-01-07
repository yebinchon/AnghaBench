
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txfcb {int vlctl; int flags; } ;
struct sk_buff {int dummy; } ;


 int TXFCB_VLN ;
 int vlan_tx_tag_get (struct sk_buff*) ;

void inline gfar_tx_vlan(struct sk_buff *skb, struct txfcb *fcb)
{
 fcb->flags |= TXFCB_VLN;
 fcb->vlctl = vlan_tx_tag_get(skb);
}
