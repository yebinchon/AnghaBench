
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct mii_bus {int dummy; } ;


 struct mii_bus* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int free_mdio_bitbang (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;

__attribute__((used)) static int sh_mdio_release(struct net_device *ndev)
{
 struct mii_bus *bus = dev_get_drvdata(&ndev->dev);


 mdiobus_unregister(bus);


 dev_set_drvdata(&ndev->dev, ((void*)0));


 free_mdio_bitbang(bus);

 return 0;
}
