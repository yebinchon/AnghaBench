
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_LASI_STAT ;
 int t3_mdio_read (struct cphy*,int ,int ,int *) ;

int t3_phy_lasi_intr_clear(struct cphy *phy)
{
 u32 val;

 return t3_mdio_read(phy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_STAT, &val);
}
