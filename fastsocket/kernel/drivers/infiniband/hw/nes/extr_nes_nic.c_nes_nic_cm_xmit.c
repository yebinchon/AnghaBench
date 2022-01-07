
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int NES_DBG_CM ;
 int dev_queue_xmit (struct sk_buff*) ;
 int nes_debug (int ,char*,int) ;

int nes_nic_cm_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 int ret;

 skb->dev = netdev;
 ret = dev_queue_xmit(skb);
 if (ret) {
  nes_debug(NES_DBG_CM, "Bad return code from dev_queue_xmit %d\n", ret);
 }

 return ret;
}
