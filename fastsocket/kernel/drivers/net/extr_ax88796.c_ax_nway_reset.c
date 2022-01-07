
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ax_device {int mii; } ;


 int mii_nway_restart (int *) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_nway_reset(struct net_device *dev)
{
 struct ax_device *ax = to_ax_dev(dev);
 return mii_nway_restart(&ax->mii);
}
