
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct temac_local {TYPE_1__* mii_bus; } ;
struct TYPE_3__ {int irq; } ;


 int kfree (int ) ;
 int mdiobus_free (TYPE_1__*) ;
 int mdiobus_unregister (TYPE_1__*) ;

void temac_mdio_teardown(struct temac_local *lp)
{
 mdiobus_unregister(lp->mii_bus);
 kfree(lp->mii_bus->irq);
 mdiobus_free(lp->mii_bus);
 lp->mii_bus = ((void*)0);
}
