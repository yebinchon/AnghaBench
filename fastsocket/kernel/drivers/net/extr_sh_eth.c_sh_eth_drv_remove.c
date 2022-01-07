
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int flush_scheduled_work () ;
 int free_netdev (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int sh_mdio_release (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int sh_eth_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);

 sh_mdio_release(ndev);
 unregister_netdev(ndev);
 flush_scheduled_work();

 free_netdev(ndev);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
