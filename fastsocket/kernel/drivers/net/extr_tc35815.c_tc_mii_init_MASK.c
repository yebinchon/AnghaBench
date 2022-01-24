#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tc35815_local {TYPE_3__* mii_bus; TYPE_2__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/ * irq; int /*<<< orphan*/ * parent; struct net_device* priv; int /*<<< orphan*/  id; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct TYPE_8__ {int devfn; int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct TYPE_7__ {int number; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int PHY_MAX_ADDR ; 
 int /*<<< orphan*/  PHY_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct tc35815_local* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tc_mdio_read ; 
 int /*<<< orphan*/  tc_mdio_write ; 
 int FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct tc35815_local *lp = FUNC6(dev);
	int err;
	int i;

	lp->mii_bus = FUNC2();
	if (lp->mii_bus == NULL) {
		err = -ENOMEM;
		goto err_out;
	}

	lp->mii_bus->name = "tc35815_mii_bus";
	lp->mii_bus->read = tc_mdio_read;
	lp->mii_bus->write = tc_mdio_write;
	FUNC7(lp->mii_bus->id, MII_BUS_ID_SIZE, "%x",
		 (lp->pci_dev->bus->number << 8) | lp->pci_dev->devfn);
	lp->mii_bus->priv = dev;
	lp->mii_bus->parent = &lp->pci_dev->dev;
	lp->mii_bus->irq = FUNC1(sizeof(int) * PHY_MAX_ADDR, GFP_KERNEL);
	if (!lp->mii_bus->irq) {
		err = -ENOMEM;
		goto err_out_free_mii_bus;
	}

	for (i = 0; i < PHY_MAX_ADDR; i++)
		lp->mii_bus->irq[i] = PHY_POLL;

	err = FUNC4(lp->mii_bus);
	if (err)
		goto err_out_free_mdio_irq;
	err = FUNC8(dev);
	if (err)
		goto err_out_unregister_bus;
	return 0;

err_out_unregister_bus:
	FUNC5(lp->mii_bus);
err_out_free_mdio_irq:
	FUNC0(lp->mii_bus->irq);
err_out_free_mii_bus:
	FUNC3(lp->mii_bus);
err_out:
	return err;
}