
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int adapter; } ;


 int A_ELMER0_INT_ENABLE ;
 int ELMER0_GP_BIT6 ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_LSALARM ;
 int cphy_mdio_write (struct cphy*,int ,int ,int ) ;
 scalar_t__ t1_is_asic (int ) ;
 int t1_tpi_read (int ,int ,int *) ;
 int t1_tpi_write (int ,int ,int ) ;

__attribute__((used)) static int mv88x201x_interrupt_enable(struct cphy *cphy)
{

 cphy_mdio_write(cphy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_CTRL,
   MDIO_PMA_LASI_LSALARM);


 if (t1_is_asic(cphy->adapter)) {
  u32 elmer;

  t1_tpi_read(cphy->adapter, A_ELMER0_INT_ENABLE, &elmer);
  elmer |= ELMER0_GP_BIT6;
  t1_tpi_write(cphy->adapter, A_ELMER0_INT_ENABLE, elmer);
 }
 return 0;
}
