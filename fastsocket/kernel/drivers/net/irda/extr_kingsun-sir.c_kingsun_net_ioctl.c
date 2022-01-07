
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kingsun_cb {int receiving; int netdev; } ;
struct ifreq {int dummy; } ;
struct if_irda_req {int ifr_receiving; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;



 int TRUE ;
 int capable (int ) ;
 int irda_device_set_media_busy (int ,int ) ;
 struct kingsun_cb* netdev_priv (struct net_device*) ;
 int netif_device_present (int ) ;
 int netif_running (int ) ;

__attribute__((used)) static int kingsun_net_ioctl(struct net_device *netdev, struct ifreq *rq,
        int cmd)
{
 struct if_irda_req *irq = (struct if_irda_req *) rq;
 struct kingsun_cb *kingsun = netdev_priv(netdev);
 int ret = 0;

 switch (cmd) {
 case 129:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;


  if (netif_device_present(kingsun->netdev))

   ret = -EOPNOTSUPP;
  break;

 case 128:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;


  if (netif_running(kingsun->netdev))
   irda_device_set_media_busy(kingsun->netdev, TRUE);
  break;

 case 130:

  irq->ifr_receiving = kingsun->receiving;
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 return ret;
}
