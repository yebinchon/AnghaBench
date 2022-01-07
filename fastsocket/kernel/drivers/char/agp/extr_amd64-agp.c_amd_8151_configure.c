
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gart_bus_addr; int gatt_table_real; } ;
struct TYPE_3__ {int misc; } ;


 int AMD_NB_GART ;
 TYPE_2__* agp_bridge ;
 int amd64_configure (int ,unsigned long) ;
 int amd_flush_garts () ;
 int amd_nb_has_feature (int ) ;
 int amd_nb_num () ;
 TYPE_1__* node_to_amd_nb (int) ;
 unsigned long virt_to_phys (int ) ;

__attribute__((used)) static int amd_8151_configure(void)
{
 unsigned long gatt_bus = virt_to_phys(agp_bridge->gatt_table_real);
 int i;

 if (!amd_nb_has_feature(AMD_NB_GART))
  return 0;


 for (i = 0; i < amd_nb_num(); i++) {
  agp_bridge->gart_bus_addr =
   amd64_configure(node_to_amd_nb(i)->misc, gatt_bus);
 }
 amd_flush_garts();
 return 0;
}
