
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pll_mapping {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {int card_type; int chipset; } ;
 struct pll_mapping* nv04_pll_mapping ;
 struct pll_mapping* nv40_pll_mapping ;
 struct pll_mapping* nv50_pll_mapping ;
 struct pll_mapping* nv84_pll_mapping ;
 TYPE_1__* nv_device (struct nouveau_bios*) ;

__attribute__((used)) static struct pll_mapping *
pll_map(struct nouveau_bios *bios)
{
 switch (nv_device(bios)->card_type) {
 case 133:
 case 132:
 case 131:
 case 130:
  return nv04_pll_mapping;
  break;
 case 129:
  return nv40_pll_mapping;
 case 128:
  if (nv_device(bios)->chipset == 0x50)
   return nv50_pll_mapping;
  else
  if (nv_device(bios)->chipset < 0xa3 ||
      nv_device(bios)->chipset == 0xaa ||
      nv_device(bios)->chipset == 0xac)
   return nv84_pll_mapping;
 default:
  return ((void*)0);
 }
}
