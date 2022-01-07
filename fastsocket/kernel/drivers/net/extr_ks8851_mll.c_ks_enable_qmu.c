
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int enabled; } ;


 int KS_RXCR1 ;
 int KS_RXQCR ;
 int KS_TXCR ;
 int RXCR1_RXE ;
 int RXQCR_RXFCTE ;
 int TXCR_TXE ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;

void ks_enable_qmu(struct ks_net *ks)
{
 u16 w;

 w = ks_rdreg16(ks, KS_TXCR);

 ks_wrreg16(ks, KS_TXCR, w | TXCR_TXE);






 w = ks_rdreg16(ks, KS_RXQCR);
 ks_wrreg16(ks, KS_RXQCR, w | RXQCR_RXFCTE);


 w = ks_rdreg16(ks, KS_RXCR1);
 ks_wrreg16(ks, KS_RXCR1, w | RXCR1_RXE);
 ks->enabled = 1;
}
