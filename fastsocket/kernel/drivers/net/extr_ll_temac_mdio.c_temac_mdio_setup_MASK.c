#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct temac_local {int /*<<< orphan*/  indirect_mutex; int /*<<< orphan*/  dev; struct mii_bus* mii_bus; int /*<<< orphan*/  mdio_irqs; } ;
struct resource {scalar_t__ start; } ;
struct mii_bus {char* name; int /*<<< orphan*/  irq; int /*<<< orphan*/  parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct temac_local* priv; int /*<<< orphan*/  id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  XTE_MC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int* FUNC6 (struct device_node*,char*,int*) ; 
 int FUNC7 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct temac_local*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  temac_mdio_read ; 
 int /*<<< orphan*/  temac_mdio_write ; 

int FUNC11(struct temac_local *lp, struct device_node *np)
{
	struct mii_bus *bus;
	const u32 *bus_hz;
	int clk_div;
	int rc, size;
	struct resource res;

	/* Calculate a reasonable divisor for the clock rate */
	clk_div = 0x3f; /* worst-case default setting */
	bus_hz = FUNC6(np, "clock-frequency", &size);
	if (bus_hz && size >= sizeof(*bus_hz)) {
		clk_div = (*bus_hz) / (2500 * 1000 * 2) - 1;
		if (clk_div < 1)
			clk_div = 1;
		if (clk_div > 0x3f)
			clk_div = 0x3f;
	}

	/* Enable the MDIO bus by asserting the enable bit and writing
	 * in the clock config */
	FUNC3(&lp->indirect_mutex);
	FUNC10(lp, XTE_MC_OFFSET, 1 << 6 | clk_div);
	FUNC4(&lp->indirect_mutex);

	bus = FUNC1();
	if (!bus)
		return -ENOMEM;

	FUNC5(np, 0, &res);
	FUNC8(bus->id, MII_BUS_ID_SIZE, "%.8llx",
		 (unsigned long long)res.start);
	bus->priv = lp;
	bus->name = "Xilinx TEMAC MDIO";
	bus->read = temac_mdio_read;
	bus->write = temac_mdio_write;
	bus->parent = lp->dev;
	bus->irq = lp->mdio_irqs; /* preallocated IRQ table */

	lp->mii_bus = bus;

	rc = FUNC7(bus, np);
	if (rc)
		goto err_register;

	FUNC3(&lp->indirect_mutex);
	FUNC0(lp->dev, "MDIO bus registered;  MC:%x\n",
		FUNC9(lp, XTE_MC_OFFSET));
	FUNC4(&lp->indirect_mutex);
	return 0;

 err_register:
	FUNC2(bus);
	return rc;
}