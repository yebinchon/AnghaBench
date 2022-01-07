
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stir_cb {int receiving; int netdev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct if_irda_req {int ifr_receiving; int ifr_baudrate; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;



 int TRUE ;
 int capable (int ) ;
 int change_speed (struct stir_cb*,int ) ;
 int irda_device_set_media_busy (int ,int ) ;
 struct stir_cb* netdev_priv (struct net_device*) ;
 int netif_device_present (int ) ;
 int netif_running (int ) ;

__attribute__((used)) static int stir_net_ioctl(struct net_device *netdev, struct ifreq *rq, int cmd)
{
 struct if_irda_req *irq = (struct if_irda_req *) rq;
 struct stir_cb *stir = netdev_priv(netdev);
 int ret = 0;

 switch (cmd) {
 case 129:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;


  if (netif_device_present(stir->netdev))
   ret = change_speed(stir, irq->ifr_baudrate);
  break;

 case 128:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;


  if (netif_running(stir->netdev))
   irda_device_set_media_busy(stir->netdev, TRUE);
  break;

 case 130:

  irq->ifr_receiving = stir->receiving;
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 return ret;
}
