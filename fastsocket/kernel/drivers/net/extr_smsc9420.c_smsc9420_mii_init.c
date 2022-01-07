
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smsc9420_pdata {TYPE_3__* mii_bus; int * phy_irq; TYPE_2__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int phy_mask; int * irq; int write; int read; struct smsc9420_pdata* priv; int id; int name; } ;
struct TYPE_8__ {int devfn; TYPE_1__* bus; } ;
struct TYPE_7__ {int number; } ;


 int DRV_MDIONAME ;
 int ENOMEM ;
 int ENXIO ;
 int MII_BUS_ID_SIZE ;
 int PHY_MAX_ADDR ;
 int PHY_POLL ;
 int PROBE ;
 TYPE_3__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_3__*) ;
 scalar_t__ mdiobus_register (TYPE_3__*) ;
 int mdiobus_unregister (TYPE_3__*) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 scalar_t__ smsc9420_mii_probe (struct net_device*) ;
 int smsc9420_mii_read ;
 int smsc9420_mii_write ;
 int smsc_warn (int ,char*) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int smsc9420_mii_init(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 int err = -ENXIO, i;

 pd->mii_bus = mdiobus_alloc();
 if (!pd->mii_bus) {
  err = -ENOMEM;
  goto err_out_1;
 }
 pd->mii_bus->name = DRV_MDIONAME;
 snprintf(pd->mii_bus->id, MII_BUS_ID_SIZE, "%x",
  (pd->pdev->bus->number << 8) | pd->pdev->devfn);
 pd->mii_bus->priv = pd;
 pd->mii_bus->read = smsc9420_mii_read;
 pd->mii_bus->write = smsc9420_mii_write;
 pd->mii_bus->irq = pd->phy_irq;
 for (i = 0; i < PHY_MAX_ADDR; ++i)
  pd->mii_bus->irq[i] = PHY_POLL;


 pd->mii_bus->phy_mask = ~(1 << 1);

 if (mdiobus_register(pd->mii_bus)) {
  smsc_warn(PROBE, "Error registering mii bus");
  goto err_out_free_bus_2;
 }

 if (smsc9420_mii_probe(dev) < 0) {
  smsc_warn(PROBE, "Error probing mii bus");
  goto err_out_unregister_bus_3;
 }

 return 0;

err_out_unregister_bus_3:
 mdiobus_unregister(pd->mii_bus);
err_out_free_bus_2:
 mdiobus_free(pd->mii_bus);
err_out_1:
 return err;
}
