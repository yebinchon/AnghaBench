
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1000_priv {scalar_t__ reg_base; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int IORESOURCE_MEM ;
 struct net_device* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int free_sja1000dev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int unregister_sja1000dev (struct net_device*) ;

__attribute__((used)) static int sp_remove(struct platform_device *pdev)
{
 struct net_device *dev = dev_get_drvdata(&pdev->dev);
 struct sja1000_priv *priv = netdev_priv(dev);
 struct resource *res;

 unregister_sja1000dev(dev);
 dev_set_drvdata(&pdev->dev, ((void*)0));

 if (priv->reg_base)
  iounmap(priv->reg_base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 free_sja1000dev(dev);

 return 0;
}
