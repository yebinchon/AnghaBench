
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region {int key; } ;
typedef int region_t ;



region_t dm_rh_get_region_key(struct dm_region *reg)
{
 return reg->key;
}
