
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int dummy; } ;


 int KS_PMECR ;
 unsigned int PMECR_PM_MASK ;
 unsigned int ks8851_rdreg16 (struct ks8851_net*,int ) ;
 int ks8851_wrreg16 (struct ks8851_net*,int ,unsigned int) ;
 int ks_dbg (struct ks8851_net*,char*,unsigned int) ;
 scalar_t__ netif_msg_hw (struct ks8851_net*) ;

__attribute__((used)) static void ks8851_set_powermode(struct ks8851_net *ks, unsigned pwrmode)
{
 unsigned pmecr;

 if (netif_msg_hw(ks))
  ks_dbg(ks, "setting power mode %d\n", pwrmode);

 pmecr = ks8851_rdreg16(ks, KS_PMECR);
 pmecr &= ~PMECR_PM_MASK;
 pmecr |= pwrmode;

 ks8851_wrreg16(ks, KS_PMECR, pmecr);
}
