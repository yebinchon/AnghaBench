
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct sa1100_irda {TYPE_1__ rx_buff; int open; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct if_irda_req {int ifr_receiving; int ifr_baudrate; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IS_FIR (struct sa1100_irda*) ;
 int OUTSIDE_FRAME ;



 int TRUE ;
 int capable (int ) ;
 int irda_device_set_media_busy (struct net_device*,int ) ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 int printk (char*) ;
 int sa1100_irda_set_speed (struct sa1100_irda*,int ) ;

__attribute__((used)) static int
sa1100_irda_ioctl(struct net_device *dev, struct ifreq *ifreq, int cmd)
{
 struct if_irda_req *rq = (struct if_irda_req *)ifreq;
 struct sa1100_irda *si = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd) {
 case 129:
  if (capable(CAP_NET_ADMIN)) {




   if (si->open) {
    ret = sa1100_irda_set_speed(si,
      rq->ifr_baudrate);
   } else {
    printk("sa1100_irda_ioctl: SIOCSBANDWIDTH: !netif_running\n");
    ret = 0;
   }
  }
  break;

 case 128:
  ret = -EPERM;
  if (capable(CAP_NET_ADMIN)) {
   irda_device_set_media_busy(dev, TRUE);
   ret = 0;
  }
  break;

 case 130:
  rq->ifr_receiving = IS_FIR(si) ? 0
     : si->rx_buff.state != OUTSIDE_FRAME;
  break;

 default:
  break;
 }

 return ret;
}
