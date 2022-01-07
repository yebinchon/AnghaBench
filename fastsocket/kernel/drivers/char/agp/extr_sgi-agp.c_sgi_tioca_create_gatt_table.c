
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tioca_kernel {int ca_gfxgart_base; scalar_t__ ca_gfxgart; } ;
struct agp_bridge_data {int gatt_bus_addr; int * gatt_table_real; int * gatt_table; scalar_t__ dev_private_data; } ;



__attribute__((used)) static int sgi_tioca_create_gatt_table(struct agp_bridge_data *bridge)
{
 struct tioca_kernel *info =
     (struct tioca_kernel *)bridge->dev_private_data;

 bridge->gatt_table_real = (u32 *) info->ca_gfxgart;
 bridge->gatt_table = bridge->gatt_table_real;
 bridge->gatt_bus_addr = info->ca_gfxgart_base;

 return 0;
}
