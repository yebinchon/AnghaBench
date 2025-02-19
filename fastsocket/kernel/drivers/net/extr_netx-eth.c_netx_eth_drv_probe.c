
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ platform_data; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct netxeth_platform_data {int xcno; } ;
struct netx_eth_priv {TYPE_1__* xc; int id; int lock; int sram_base; int xmac_base; int xpec_base; } ;
struct net_device {int irq; } ;
struct TYPE_6__ {int sram_base; int xmac_base; int xpec_base; int irq; } ;


 int CARDNAME ;
 int ENODEV ;
 int ENOMEM ;
 int PFIFO_MASK (int ) ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_2__*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (TYPE_2__*,char*) ;
 int free_netdev (struct net_device*) ;
 int free_xc (TYPE_1__*) ;
 struct netx_eth_priv* netdev_priv (struct net_device*) ;
 int netx_eth_enable (struct net_device*) ;
 int pfifo_free (int ) ;
 int pfifo_request (int ) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int printk (char*,...) ;
 TYPE_1__* request_xc (int ,TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int netx_eth_drv_probe(struct platform_device *pdev)
{
 struct netx_eth_priv *priv;
 struct net_device *ndev;
 struct netxeth_platform_data *pdata;
 int ret;

 ndev = alloc_etherdev(sizeof (struct netx_eth_priv));
 if (!ndev) {
  printk("%s: could not allocate device.\n", CARDNAME);
  ret = -ENOMEM;
  goto exit;
 }
 SET_NETDEV_DEV(ndev, &pdev->dev);

 platform_set_drvdata(pdev, ndev);

 priv = netdev_priv(ndev);

 pdata = (struct netxeth_platform_data *)pdev->dev.platform_data;
 priv->xc = request_xc(pdata->xcno, &pdev->dev);
 if (!priv->xc) {
  dev_err(&pdev->dev, "unable to request xc engine\n");
  ret = -ENODEV;
  goto exit_free_netdev;
 }

 ndev->irq = priv->xc->irq;
 priv->id = pdev->id;
 priv->xpec_base = priv->xc->xpec_base;
 priv->xmac_base = priv->xc->xmac_base;
 priv->sram_base = priv->xc->sram_base;

 spin_lock_init(&priv->lock);

 ret = pfifo_request(PFIFO_MASK(priv->id));
 if (ret) {
  printk("unable to request PFIFO\n");
  goto exit_free_xc;
 }

 ret = netx_eth_enable(ndev);
 if (ret)
  goto exit_free_pfifo;

 return 0;
exit_free_pfifo:
 pfifo_free(PFIFO_MASK(priv->id));
exit_free_xc:
 free_xc(priv->xc);
exit_free_netdev:
 platform_set_drvdata(pdev, ((void*)0));
 free_netdev(ndev);
exit:
 return ret;
}
