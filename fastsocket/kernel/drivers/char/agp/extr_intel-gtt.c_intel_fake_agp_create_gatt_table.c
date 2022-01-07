
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_bridge_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ gatt_bus_addr; int * gatt_table; int * gatt_table_real; } ;


 TYPE_1__* agp_bridge ;

__attribute__((used)) static int intel_fake_agp_create_gatt_table(struct agp_bridge_data *bridge)
{
 agp_bridge->gatt_table_real = ((void*)0);
 agp_bridge->gatt_table = ((void*)0);
 agp_bridge->gatt_bus_addr = 0;

 return 0;
}
