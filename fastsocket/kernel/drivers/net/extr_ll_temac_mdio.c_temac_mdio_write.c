
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct temac_local {int indirect_mutex; int dev; } ;
struct mii_bus {struct temac_local* priv; } ;


 int XTE_MGTDR_OFFSET ;
 int XTE_MIIMAI_OFFSET ;
 int dev_dbg (int ,char*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temac_indirect_out32 (struct temac_local*,int ,int) ;

__attribute__((used)) static int temac_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
 struct temac_local *lp = bus->priv;

 dev_dbg(lp->dev, "temac_mdio_write(phy_id=%i, reg=%x, val=%x)\n",
  phy_id, reg, val);




 mutex_lock(&lp->indirect_mutex);
 temac_indirect_out32(lp, XTE_MGTDR_OFFSET, val);
 temac_indirect_out32(lp, XTE_MIIMAI_OFFSET, (phy_id << 5) | reg);
 mutex_unlock(&lp->indirect_mutex);

 return 0;
}
