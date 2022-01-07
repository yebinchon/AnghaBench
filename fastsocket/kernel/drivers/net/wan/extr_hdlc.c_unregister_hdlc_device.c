
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int detach_hdlc_protocol (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdevice (struct net_device*) ;

void unregister_hdlc_device(struct net_device *dev)
{
 rtnl_lock();
 unregister_netdevice(dev);
 detach_hdlc_protocol(dev);
 rtnl_unlock();
}
