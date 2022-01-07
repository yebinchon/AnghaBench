
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv643xx_eth_private {int dev; int * phy; } ;


 int flush_scheduled_work () ;
 int free_netdev (int ) ;
 int phy_detach (int *) ;
 struct mv643xx_eth_private* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int mv643xx_eth_remove(struct platform_device *pdev)
{
 struct mv643xx_eth_private *mp = platform_get_drvdata(pdev);

 unregister_netdev(mp->dev);
 if (mp->phy != ((void*)0))
  phy_detach(mp->phy);
 flush_scheduled_work();
 free_netdev(mp->dev);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
