
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_bridge_data {int dummy; } ;
struct _parisc_agp_info {int gatt_entries; unsigned long* gatt; } ;
struct TYPE_2__ {scalar_t__ scratch_page; } ;


 TYPE_1__* agp_bridge ;
 struct _parisc_agp_info parisc_agp_info ;

__attribute__((used)) static int
parisc_agp_create_gatt_table(struct agp_bridge_data *bridge)
{
 struct _parisc_agp_info *info = &parisc_agp_info;
 int i;

 for (i = 0; i < info->gatt_entries; i++) {
  info->gatt[i] = (unsigned long)agp_bridge->scratch_page;
 }

 return 0;
}
