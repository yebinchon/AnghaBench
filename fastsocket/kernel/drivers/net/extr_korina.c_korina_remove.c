
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct korina_private {int tx_dma_regs; int rx_dma_regs; int eth_regs; } ;
struct korina_device {int dev; } ;


 int free_netdev (int ) ;
 int iounmap (int ) ;
 struct korina_private* netdev_priv (int ) ;
 struct korina_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int korina_remove(struct platform_device *pdev)
{
 struct korina_device *bif = platform_get_drvdata(pdev);
 struct korina_private *lp = netdev_priv(bif->dev);

 iounmap(lp->eth_regs);
 iounmap(lp->rx_dma_regs);
 iounmap(lp->tx_dma_regs);

 platform_set_drvdata(pdev, ((void*)0));
 unregister_netdev(bif->dev);
 free_netdev(bif->dev);

 return 0;
}
