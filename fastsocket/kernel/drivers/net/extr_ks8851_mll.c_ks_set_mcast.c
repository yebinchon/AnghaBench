
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int all_mcast; scalar_t__ enabled; } ;


 int KS_RXCR1 ;
 int RXCR1_FILTER_MASK ;
 int RXCR1_RXAE ;
 int RXCR1_RXMAFMA ;
 int RXCR1_RXPAFMA ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_start_rx (struct ks_net*) ;
 int ks_stop_rx (struct ks_net*) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;

__attribute__((used)) static void ks_set_mcast(struct ks_net *ks, u16 mcast)
{
 u16 cntl;

 ks->all_mcast = mcast;
 ks_stop_rx(ks);
 cntl = ks_rdreg16(ks, KS_RXCR1);
 cntl &= ~RXCR1_FILTER_MASK;
 if (mcast)

  cntl |= (RXCR1_RXAE | RXCR1_RXMAFMA | RXCR1_RXPAFMA);
 else




  cntl |= RXCR1_RXPAFMA;

 ks_wrreg16(ks, KS_RXCR1, cntl);

 if (ks->enabled)
  ks_start_rx(ks);
}
