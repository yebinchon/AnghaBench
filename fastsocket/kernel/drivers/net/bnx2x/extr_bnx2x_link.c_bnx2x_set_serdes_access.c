
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ;
 scalar_t__ GRCBASE_EMAC0 ;
 scalar_t__ GRCBASE_EMAC1 ;
 scalar_t__ NIG_REG_SERDES0_CTRL_MD_ST ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static void bnx2x_set_serdes_access(struct bnx2x *bp, u8 port)
{
 u32 emac_base = (port) ? GRCBASE_EMAC1 : GRCBASE_EMAC0;


 REG_WR(bp, NIG_REG_SERDES0_CTRL_MD_ST + port*0x10, 1);
 REG_WR(bp, emac_base + EMAC_REG_EMAC_MDIO_COMM, 0x245f8000);
 udelay(500);
 REG_WR(bp, emac_base + EMAC_REG_EMAC_MDIO_COMM, 0x245d000f);
 udelay(500);

 REG_WR(bp, NIG_REG_SERDES0_CTRL_MD_ST + port*0x10, 0);
}
