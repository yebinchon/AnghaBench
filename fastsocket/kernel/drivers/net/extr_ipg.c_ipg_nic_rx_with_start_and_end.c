
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int protocol; } ;
struct net_device {int dummy; } ;
struct ipg_rx {int rfs; } ;
struct ipg_jumbo {int * skb; scalar_t__ current_size; scalar_t__ found_start; } ;
struct ipg_nic_private {int rxfrag_size; struct sk_buff** rx_buff; struct ipg_jumbo jumbo; } ;


 int CHECKSUM_NONE ;
 int IPG_RFS_RXFRAMELEN ;
 scalar_t__ NORMAL_PACKET ;
 int dev_kfree_skb_irq (int *) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ ipg_nic_rx_check_error (struct net_device*) ;
 int le64_to_cpu (int ) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ipg_nic_rx_with_start_and_end(struct net_device *dev,
       struct ipg_nic_private *sp,
       struct ipg_rx *rxfd, unsigned entry)
{
 struct ipg_jumbo *jumbo = &sp->jumbo;
 struct sk_buff *skb;
 int framelen;

 if (jumbo->found_start) {
  dev_kfree_skb_irq(jumbo->skb);
  jumbo->found_start = 0;
  jumbo->current_size = 0;
  jumbo->skb = ((void*)0);
 }


 if (ipg_nic_rx_check_error(dev) != NORMAL_PACKET)
  return;

 skb = sp->rx_buff[entry];
 if (!skb)
  return;


 framelen = le64_to_cpu(rxfd->rfs) & IPG_RFS_RXFRAMELEN;
 if (framelen > sp->rxfrag_size)
  framelen = sp->rxfrag_size;

 skb_put(skb, framelen);
 skb->protocol = eth_type_trans(skb, dev);
 skb->ip_summed = CHECKSUM_NONE;
 netif_rx(skb);
 sp->rx_buff[entry] = ((void*)0);
}
