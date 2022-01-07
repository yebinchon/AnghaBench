
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCRN_MAL0_CFG ;
 int EMAC_RESET ;
 int MAL_RESET ;
 int mfdcr (int ) ;
 int mtdcr (int ,int) ;

void ibm4xx_quiesce_eth(u32 *emac0, u32 *emac1)
{



 if (emac0)
  *emac0 = EMAC_RESET;
 if (emac1)
  *emac1 = EMAC_RESET;

 mtdcr(DCRN_MAL0_CFG, MAL_RESET);
 while (mfdcr(DCRN_MAL0_CFG) & MAL_RESET)
  ;
}
