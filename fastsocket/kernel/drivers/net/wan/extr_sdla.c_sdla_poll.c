
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int expires; } ;
struct frad_local {TYPE_1__ timer; } ;


 int SDLA_502_RCV_BUF ;
 int add_timer (TYPE_1__*) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 scalar_t__ sdla_byte (struct net_device*,int ) ;
 int sdla_receive (struct net_device*) ;

__attribute__((used)) static void sdla_poll(unsigned long device)
{
 struct net_device *dev;
 struct frad_local *flp;

 dev = (struct net_device *) device;
 flp = netdev_priv(dev);

 if (sdla_byte(dev, SDLA_502_RCV_BUF))
  sdla_receive(dev);

 flp->timer.expires = 1;
 add_timer(&flp->timer);
}
