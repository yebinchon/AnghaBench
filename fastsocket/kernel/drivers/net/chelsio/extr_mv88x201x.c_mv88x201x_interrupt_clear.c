
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int adapter; } ;


 int A_ELMER0_INT_CAUSE ;
 int ELMER0_GP_BIT6 ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_LASI_RXSTAT ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_LASI_TXSTAT ;
 int MDIO_STAT1 ;
 int cphy_mdio_read (struct cphy*,int ,int ,int *) ;
 scalar_t__ t1_is_asic (int ) ;
 int t1_tpi_read (int ,int ,int *) ;
 int t1_tpi_write (int ,int ,int ) ;

__attribute__((used)) static int mv88x201x_interrupt_clear(struct cphy *cphy)
{
 u32 elmer;
 u32 val;
 cphy_mdio_read(cphy, MDIO_MMD_PMAPMD, MDIO_STAT1, &val);

 cphy_mdio_read(cphy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_STAT, &val);
 if (t1_is_asic(cphy->adapter)) {
  t1_tpi_read(cphy->adapter, A_ELMER0_INT_CAUSE, &elmer);
  elmer |= ELMER0_GP_BIT6;
  t1_tpi_write(cphy->adapter, A_ELMER0_INT_CAUSE, elmer);
 }
 return 0;
}
