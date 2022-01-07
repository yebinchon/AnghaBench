
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int phyregs; int regs; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int tsi108_stop_ethernet (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int tsi108_ether_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct tsi108_prv_data *priv = netdev_priv(dev);

 unregister_netdev(dev);
 tsi108_stop_ethernet(dev);
 platform_set_drvdata(pdev, ((void*)0));
 iounmap(priv->regs);
 iounmap(priv->phyregs);
 free_netdev(dev);

 return 0;
}
