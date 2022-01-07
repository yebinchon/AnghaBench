
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {int phy_lock; TYPE_1__ mii_if; int dev; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MII_BMCR ;
 int jme_mdio_read (int ,int ,int ) ;
 int jme_mdio_write (int ,int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
jme_restart_an(struct jme_adapter *jme)
{
 u32 bmcr;

 spin_lock_bh(&jme->phy_lock);
 bmcr = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_BMCR);
 bmcr |= (BMCR_ANENABLE | BMCR_ANRESTART);
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, MII_BMCR, bmcr);
 spin_unlock_bh(&jme->phy_lock);
}
