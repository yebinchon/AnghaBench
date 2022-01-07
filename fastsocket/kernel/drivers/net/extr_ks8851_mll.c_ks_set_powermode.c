
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int dummy; } ;


 int KS_GRR ;
 int KS_PMECR ;
 unsigned int PMECR_PM_MASK ;
 int ks_dbg (struct ks_net*,char*,unsigned int) ;
 unsigned int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_wrreg16 (struct ks_net*,int ,unsigned int) ;
 scalar_t__ netif_msg_hw (struct ks_net*) ;

__attribute__((used)) static void ks_set_powermode(struct ks_net *ks, unsigned pwrmode)
{
 unsigned pmecr;

 if (netif_msg_hw(ks))
  ks_dbg(ks, "setting power mode %d\n", pwrmode);

 ks_rdreg16(ks, KS_GRR);
 pmecr = ks_rdreg16(ks, KS_PMECR);
 pmecr &= ~PMECR_PM_MASK;
 pmecr |= pwrmode;

 ks_wrreg16(ks, KS_PMECR, pmecr);
}
