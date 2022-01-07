
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int dev; int indirect_mutex; } ;
struct mii_bus {struct temac_local* priv; } ;


 int XTE_LSW0_OFFSET ;
 int XTE_MIIMAI_OFFSET ;
 int dev_dbg (int ,char*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temac_indirect_in32 (struct temac_local*,int ) ;
 int temac_iow (struct temac_local*,int ,int) ;

__attribute__((used)) static int temac_mdio_read(struct mii_bus *bus, int phy_id, int reg)
{
 struct temac_local *lp = bus->priv;
 u32 rc;




 mutex_lock(&lp->indirect_mutex);
 temac_iow(lp, XTE_LSW0_OFFSET, (phy_id << 5) | reg);
 rc = temac_indirect_in32(lp, XTE_MIIMAI_OFFSET);
 mutex_unlock(&lp->indirect_mutex);

 dev_dbg(lp->dev, "temac_mdio_read(phy_id=%i, reg=%x) == %x\n",
  phy_id, reg, rc);

 return rc;
}
