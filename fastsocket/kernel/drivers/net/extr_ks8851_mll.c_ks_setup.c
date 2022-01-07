
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int rc_rxqcr; scalar_t__ all_mcast; scalar_t__ promiscuous; } ;


 int KS_P1MBCR ;
 int KS_RXCR1 ;
 int KS_RXFCTR ;
 int KS_RXFDPR ;
 int KS_RXQCR ;
 int KS_TXCR ;
 int KS_TXFDPR ;
 int P1MBCR_FORCE_FDX ;
 int RXCR1_RXAE ;
 int RXCR1_RXBE ;
 int RXCR1_RXFCE ;
 int RXCR1_RXINVF ;
 int RXCR1_RXIPFCC ;
 int RXCR1_RXMAFMA ;
 int RXCR1_RXME ;
 int RXCR1_RXPAFMA ;
 int RXCR1_RXUE ;
 int RXFCTR_THRESHOLD_MASK ;
 int RXFDPR_RXFPAI ;
 int RXQCR_CMD_CNTL ;
 int TXCR_TCGIP ;
 int TXCR_TXCRC ;
 int TXCR_TXFCE ;
 int TXCR_TXPE ;
 int TXFDPR_TXFPAI ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;

__attribute__((used)) static void ks_setup(struct ks_net *ks)
{
 u16 w;






 ks_wrreg16(ks, KS_TXFDPR, TXFDPR_TXFPAI);


 ks_wrreg16(ks, KS_RXFDPR, RXFDPR_RXFPAI);


 ks_wrreg16(ks, KS_RXFCTR, 1 & RXFCTR_THRESHOLD_MASK);


 ks->rc_rxqcr = RXQCR_CMD_CNTL;
 ks_wrreg16(ks, KS_RXQCR, ks->rc_rxqcr);







 w = ks_rdreg16(ks, KS_P1MBCR);
 w &= ~P1MBCR_FORCE_FDX;
 ks_wrreg16(ks, KS_P1MBCR, w);

 w = TXCR_TXFCE | TXCR_TXPE | TXCR_TXCRC | TXCR_TCGIP;
 ks_wrreg16(ks, KS_TXCR, w);

 w = RXCR1_RXFCE | RXCR1_RXBE | RXCR1_RXUE | RXCR1_RXME | RXCR1_RXIPFCC;

 if (ks->promiscuous)
  w |= (RXCR1_RXAE | RXCR1_RXINVF);
 else if (ks->all_mcast)
  w |= (RXCR1_RXAE | RXCR1_RXMAFMA | RXCR1_RXPAFMA);
 else
  w |= RXCR1_RXPAFMA;

 ks_wrreg16(ks, KS_RXCR1, w);
}
