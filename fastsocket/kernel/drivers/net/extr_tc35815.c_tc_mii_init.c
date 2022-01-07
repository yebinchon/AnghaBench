
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tc35815_local {TYPE_3__* mii_bus; TYPE_2__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {char* name; int * irq; int * parent; struct net_device* priv; int id; int write; int read; } ;
struct TYPE_8__ {int devfn; int dev; TYPE_1__* bus; } ;
struct TYPE_7__ {int number; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MII_BUS_ID_SIZE ;
 int PHY_MAX_ADDR ;
 int PHY_POLL ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 TYPE_3__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_3__*) ;
 int mdiobus_register (TYPE_3__*) ;
 int mdiobus_unregister (TYPE_3__*) ;
 struct tc35815_local* netdev_priv (struct net_device*) ;
 int snprintf (int ,int ,char*,int) ;
 int tc_mdio_read ;
 int tc_mdio_write ;
 int tc_mii_probe (struct net_device*) ;

__attribute__((used)) static int tc_mii_init(struct net_device *dev)
{
 struct tc35815_local *lp = netdev_priv(dev);
 int err;
 int i;

 lp->mii_bus = mdiobus_alloc();
 if (lp->mii_bus == ((void*)0)) {
  err = -ENOMEM;
  goto err_out;
 }

 lp->mii_bus->name = "tc35815_mii_bus";
 lp->mii_bus->read = tc_mdio_read;
 lp->mii_bus->write = tc_mdio_write;
 snprintf(lp->mii_bus->id, MII_BUS_ID_SIZE, "%x",
   (lp->pci_dev->bus->number << 8) | lp->pci_dev->devfn);
 lp->mii_bus->priv = dev;
 lp->mii_bus->parent = &lp->pci_dev->dev;
 lp->mii_bus->irq = kmalloc(sizeof(int) * PHY_MAX_ADDR, GFP_KERNEL);
 if (!lp->mii_bus->irq) {
  err = -ENOMEM;
  goto err_out_free_mii_bus;
 }

 for (i = 0; i < PHY_MAX_ADDR; i++)
  lp->mii_bus->irq[i] = PHY_POLL;

 err = mdiobus_register(lp->mii_bus);
 if (err)
  goto err_out_free_mdio_irq;
 err = tc_mii_probe(dev);
 if (err)
  goto err_out_unregister_bus;
 return 0;

err_out_unregister_bus:
 mdiobus_unregister(lp->mii_bus);
err_out_free_mdio_irq:
 kfree(lp->mii_bus->irq);
err_out_free_mii_bus:
 mdiobus_free(lp->mii_bus);
err_out:
 return err;
}
