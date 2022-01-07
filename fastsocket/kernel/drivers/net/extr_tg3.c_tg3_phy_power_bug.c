
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int phy_flags; int pci_fn; } ;
 int TG3_PHYFLG_MII_SERDES ;
 int TG3_PHYFLG_PHY_SERDES ;
 int tg3_asic_rev (struct tg3*) ;

__attribute__((used)) static bool tg3_phy_power_bug(struct tg3 *tp)
{
 switch (tg3_asic_rev(tp)) {
 case 133:
 case 132:
  return 1;
 case 128:
  if (tp->phy_flags & TG3_PHYFLG_MII_SERDES)
   return 1;
  return 0;
 case 131:
  if (!tp->pci_fn)
   return 1;
  return 0;
 case 130:
 case 129:
  if ((tp->phy_flags & TG3_PHYFLG_PHY_SERDES) &&
      !tp->pci_fn)
   return 1;
  return 0;
 }

 return 0;
}
