
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {scalar_t__ type; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_OFDMTAB_MINSIGSQ ;
 scalar_t__ B43_PHYTYPE_A ;
 scalar_t__ B43_PHYTYPE_G ;
 int B43_TAB_SIGMASQR_SIZE ;
 int B43_WARN_ON (int) ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int const) ;
 int * b43_tab_sigmasqr1 ;
 int * b43_tab_sigmasqr2 ;

__attribute__((used)) static void b43_wa_msst(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 int i;
 const u16 *tab;

 if (phy->type == B43_PHYTYPE_A) {
  tab = b43_tab_sigmasqr1;
 } else if (phy->type == B43_PHYTYPE_G) {
  tab = b43_tab_sigmasqr2;
 } else {
  B43_WARN_ON(1);
  return;
 }

 for (i = 0; i < B43_TAB_SIGMASQR_SIZE; i++) {
  b43_ofdmtab_write16(dev, B43_OFDMTAB_MINSIGSQ,
     i, tab[i]);
 }
}
