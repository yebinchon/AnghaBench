
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cphy {int elmer_gpo; int * adapter; } ;
typedef int adapter_t ;


 int A_ELMER0_GPO ;
 int DUPLEX_FULL ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_STAT1 ;
 int MDIO_STAT1_LSTATUS ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int SPEED_10000 ;
 int cphy_mdio_read (struct cphy*,int ,int ,int*) ;
 scalar_t__ is_T2 (int *) ;
 scalar_t__ t1_is_T1B (int *) ;
 int t1_tpi_read (int *,int ,int*) ;
 int t1_tpi_write (int *,int ,int) ;

__attribute__((used)) static int my3126_get_link_status(struct cphy *cphy,
   int *link_ok, int *speed, int *duplex, int *fc)
{
 u32 val;
 u16 val16;
 adapter_t *adapter;

 adapter = cphy->adapter;
 cphy_mdio_read(cphy, MDIO_MMD_PMAPMD, MDIO_STAT1, &val);
 val16 = (u16) val;


 t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 cphy->elmer_gpo = val;

 *link_ok = (val16 & MDIO_STAT1_LSTATUS);

 if (*link_ok) {

  if (is_T2(adapter))
    val &= ~(1 << 8);
  else if (t1_is_T1B(adapter))
    val &= ~(1 << 19);
 } else {

  if (is_T2(adapter))
    val |= (1 << 8);
  else if (t1_is_T1B(adapter))
    val |= (1 << 19);
 }

 t1_tpi_write(adapter, A_ELMER0_GPO, val);
 cphy->elmer_gpo = val;
 *speed = SPEED_10000;
 *duplex = DUPLEX_FULL;


 if (fc)
  *fc = PAUSE_RX | PAUSE_TX;

 return 0;
}
