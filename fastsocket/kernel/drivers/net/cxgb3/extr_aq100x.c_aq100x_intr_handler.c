
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_IFLAG_GLOBAL ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_MMD_VEND1 ;
 int MDIO_STAT1 ;
 int cphy_cause_link_change ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int aq100x_intr_handler(struct cphy *phy)
{
 int err;
 unsigned int cause, v;

 err = t3_mdio_read(phy, MDIO_MMD_VEND1, AQ_IFLAG_GLOBAL, &cause);
 if (err)
  return err;


 t3_mdio_read(phy, MDIO_MMD_PMAPMD, MDIO_STAT1, &v);

 return cphy_cause_link_change;
}
