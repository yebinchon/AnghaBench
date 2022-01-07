
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* misc; } ;


 int AMD_NB_GART ;
 int __pa (int ) ;
 int agp_gatt_table ;
 int amd_flush_garts () ;
 int amd_nb_has_feature (int ) ;
 int amd_nb_num () ;
 int enable_gart_translation (struct pci_dev*,int ) ;
 TYPE_1__* node_to_amd_nb (int) ;

__attribute__((used)) static void enable_gart_translations(void)
{
 int i;

 if (!amd_nb_has_feature(AMD_NB_GART))
  return;

 for (i = 0; i < amd_nb_num(); i++) {
  struct pci_dev *dev = node_to_amd_nb(i)->misc;

  enable_gart_translation(dev, __pa(agp_gatt_table));
 }


 amd_flush_garts();
}
