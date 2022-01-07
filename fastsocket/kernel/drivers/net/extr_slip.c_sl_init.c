
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {scalar_t__ mode; int mtu; } ;
struct net_device {int watchdog_timeo; scalar_t__ type; int mtu; } ;


 scalar_t__ ARPHRD_SLIP ;
 int HZ ;
 struct slip* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sl_init(struct net_device *dev)
{
 struct slip *sl = netdev_priv(dev);





 dev->mtu = sl->mtu;
 dev->type = ARPHRD_SLIP + sl->mode;



 return 0;
}
