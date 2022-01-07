
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int dummy; } ;


 int AGP_USER_TYPES ;

int agp_generic_type_to_mask_type(struct agp_bridge_data *bridge,
      int type)
{
 if (type >= AGP_USER_TYPES)
  return 0;
 return type;
}
