
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int dev; } ;
struct gfar_private {int ndev; int regs; scalar_t__ tbi_node; scalar_t__ phy_node; } ;


 struct gfar_private* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int free_netdev (int ) ;
 int iounmap (int ) ;
 int of_node_put (scalar_t__) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int gfar_remove(struct of_device *ofdev)
{
 struct gfar_private *priv = dev_get_drvdata(&ofdev->dev);

 if (priv->phy_node)
  of_node_put(priv->phy_node);
 if (priv->tbi_node)
  of_node_put(priv->tbi_node);

 dev_set_drvdata(&ofdev->dev, ((void*)0));

 unregister_netdev(priv->ndev);
 iounmap(priv->regs);
 free_netdev(priv->ndev);

 return 0;
}
