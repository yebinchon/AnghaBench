
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct ipg_rx {int dummy; } ;
struct ipg_jumbo {scalar_t__ current_size; int * skb; scalar_t__ found_start; } ;
struct ipg_nic_private {scalar_t__ rxsupport_size; int rxfrag_size; struct sk_buff** rx_buff; struct ipg_jumbo jumbo; } ;


 scalar_t__ NORMAL_PACKET ;
 int dev_kfree_skb_irq (int *) ;
 scalar_t__ ipg_nic_rx_check_error (struct net_device*) ;
 int ipg_nic_rx_free_skb (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int skb_put (int *,int ) ;

__attribute__((used)) static void ipg_nic_rx_no_start_no_end(struct net_device *dev,
           struct ipg_nic_private *sp,
           struct ipg_rx *rxfd, unsigned entry)
{
 struct ipg_jumbo *jumbo = &sp->jumbo;


 if (ipg_nic_rx_check_error(dev) == NORMAL_PACKET) {
  struct sk_buff *skb = sp->rx_buff[entry];

  if (skb) {
   if (jumbo->found_start) {
    jumbo->current_size += sp->rxfrag_size;
    if (jumbo->current_size <= sp->rxsupport_size) {
     memcpy(skb_put(jumbo->skb,
             sp->rxfrag_size),
            skb->data, sp->rxfrag_size);
    }
   }
   ipg_nic_rx_free_skb(dev);
  }
 } else {
  dev_kfree_skb_irq(jumbo->skb);
  jumbo->found_start = 0;
  jumbo->current_size = 0;
  jumbo->skb = ((void*)0);
 }
}
