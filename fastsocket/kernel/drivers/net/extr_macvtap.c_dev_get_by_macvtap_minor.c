
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {struct net_device* dev; } ;


 int dev_hold (struct net_device*) ;
 struct macvlan_dev* idr_find (int *,int) ;
 int minor_idr ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct net_device *dev_get_by_macvtap_minor(int minor)
{
       struct net_device *dev = ((void*)0);
       struct macvlan_dev *vlan;

       mutex_lock(&minor_lock);
       vlan = idr_find(&minor_idr, minor);
       if (vlan) {
               dev = vlan->dev;
               dev_hold(dev);
       }
       mutex_unlock(&minor_lock);
       return dev;
}
