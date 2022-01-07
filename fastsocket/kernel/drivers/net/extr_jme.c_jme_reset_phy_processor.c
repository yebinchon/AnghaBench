
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; TYPE_2__* pdev; } ;
struct TYPE_4__ {scalar_t__ device; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int ADVERTISE_ALL ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_RESET ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 scalar_t__ PCI_DEVICE_ID_JMICRON_JMC250 ;
 int jme_mdio_read (int ,int ,int ) ;
 int jme_mdio_write (int ,int ,int ,int) ;

__attribute__((used)) static inline void
jme_reset_phy_processor(struct jme_adapter *jme)
{
 u32 val;

 jme_mdio_write(jme->dev,
   jme->mii_if.phy_id,
   MII_ADVERTISE, ADVERTISE_ALL |
   ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);

 if (jme->pdev->device == PCI_DEVICE_ID_JMICRON_JMC250)
  jme_mdio_write(jme->dev,
    jme->mii_if.phy_id,
    MII_CTRL1000,
    ADVERTISE_1000FULL | ADVERTISE_1000HALF);

 val = jme_mdio_read(jme->dev,
    jme->mii_if.phy_id,
    MII_BMCR);

 jme_mdio_write(jme->dev,
   jme->mii_if.phy_id,
   MII_BMCR, val | BMCR_RESET);

 return;
}
