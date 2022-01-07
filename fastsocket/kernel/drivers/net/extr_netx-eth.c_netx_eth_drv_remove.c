
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct netx_eth_priv {int id; int xc; } ;
struct net_device {int dummy; } ;


 int PFIFO_MASK (int ) ;
 struct net_device* dev_get_drvdata (int *) ;
 int free_netdev (struct net_device*) ;
 int free_xc (int ) ;
 struct netx_eth_priv* netdev_priv (struct net_device*) ;
 int pfifo_free (int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_netdev (struct net_device*) ;
 int xc_stop (int ) ;

__attribute__((used)) static int netx_eth_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = dev_get_drvdata(&pdev->dev);
 struct netx_eth_priv *priv = netdev_priv(ndev);

 platform_set_drvdata(pdev, ((void*)0));

 unregister_netdev(ndev);
 xc_stop(priv->xc);
 free_xc(priv->xc);
 free_netdev(ndev);
 pfifo_free(PFIFO_MASK(priv->id));

 return 0;
}
