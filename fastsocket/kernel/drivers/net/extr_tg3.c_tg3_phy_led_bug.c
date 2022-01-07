
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int phy_flags; int pci_fn; } ;




 int TG3_PHYFLG_MII_SERDES ;
 int tg3_asic_rev (struct tg3*) ;

__attribute__((used)) static bool tg3_phy_led_bug(struct tg3 *tp)
{
 switch (tg3_asic_rev(tp)) {
 case 129:
 case 128:
  if ((tp->phy_flags & TG3_PHYFLG_MII_SERDES) &&
      !tp->pci_fn)
   return 1;
  return 0;
 }

 return 0;
}
