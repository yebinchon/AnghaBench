
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ipoib_dev_cleanup (struct net_device*) ;

__attribute__((used)) static void ipoib_uninit(struct net_device *dev)
{
 ipoib_dev_cleanup(dev);
}
