
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct rndis_wlan_private {int work; int workqueue; int work_pending; } ;
struct net_device {int dummy; } ;


 int WORK_SET_MULTICAST_LIST ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rndis_wlan_set_multicast_list(struct net_device *dev)
{
 struct usbnet *usbdev = netdev_priv(dev);
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);

 if (test_bit(WORK_SET_MULTICAST_LIST, &priv->work_pending))
  return;

 set_bit(WORK_SET_MULTICAST_LIST, &priv->work_pending);
 queue_work(priv->workqueue, &priv->work);
}
