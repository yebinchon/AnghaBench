
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {int dummy; } ;
struct device {int dummy; } ;
struct of_device {struct device dev; } ;
struct net_device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int free_netdev (struct net_device*) ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int ucc_geth_memclean (struct ucc_geth_private*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ucc_geth_remove(struct of_device* ofdev)
{
 struct device *device = &ofdev->dev;
 struct net_device *dev = dev_get_drvdata(device);
 struct ucc_geth_private *ugeth = netdev_priv(dev);

 unregister_netdev(dev);
 free_netdev(dev);
 ucc_geth_memclean(ugeth);
 dev_set_drvdata(device, ((void*)0));

 return 0;
}
