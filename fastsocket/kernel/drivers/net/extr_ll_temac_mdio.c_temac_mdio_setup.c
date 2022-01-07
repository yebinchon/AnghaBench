
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int indirect_mutex; int dev; struct mii_bus* mii_bus; int mdio_irqs; } ;
struct resource {scalar_t__ start; } ;
struct mii_bus {char* name; int irq; int parent; int write; int read; struct temac_local* priv; int id; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int XTE_MC_OFFSET ;
 int dev_dbg (int ,char*,int ) ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int* of_get_property (struct device_node*,char*,int*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int snprintf (int ,int ,char*,unsigned long long) ;
 int temac_indirect_in32 (struct temac_local*,int ) ;
 int temac_indirect_out32 (struct temac_local*,int ,int) ;
 int temac_mdio_read ;
 int temac_mdio_write ;

int temac_mdio_setup(struct temac_local *lp, struct device_node *np)
{
 struct mii_bus *bus;
 const u32 *bus_hz;
 int clk_div;
 int rc, size;
 struct resource res;


 clk_div = 0x3f;
 bus_hz = of_get_property(np, "clock-frequency", &size);
 if (bus_hz && size >= sizeof(*bus_hz)) {
  clk_div = (*bus_hz) / (2500 * 1000 * 2) - 1;
  if (clk_div < 1)
   clk_div = 1;
  if (clk_div > 0x3f)
   clk_div = 0x3f;
 }



 mutex_lock(&lp->indirect_mutex);
 temac_indirect_out32(lp, XTE_MC_OFFSET, 1 << 6 | clk_div);
 mutex_unlock(&lp->indirect_mutex);

 bus = mdiobus_alloc();
 if (!bus)
  return -ENOMEM;

 of_address_to_resource(np, 0, &res);
 snprintf(bus->id, MII_BUS_ID_SIZE, "%.8llx",
   (unsigned long long)res.start);
 bus->priv = lp;
 bus->name = "Xilinx TEMAC MDIO";
 bus->read = temac_mdio_read;
 bus->write = temac_mdio_write;
 bus->parent = lp->dev;
 bus->irq = lp->mdio_irqs;

 lp->mii_bus = bus;

 rc = of_mdiobus_register(bus, np);
 if (rc)
  goto err_register;

 mutex_lock(&lp->indirect_mutex);
 dev_dbg(lp->dev, "MDIO bus registered;  MC:%x\n",
  temac_indirect_in32(lp, XTE_MC_OFFSET));
 mutex_unlock(&lp->indirect_mutex);
 return 0;

 err_register:
 mdiobus_free(bus);
 return rc;
}
