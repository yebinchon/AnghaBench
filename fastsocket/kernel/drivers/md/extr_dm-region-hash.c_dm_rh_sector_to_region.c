
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int region_shift; } ;
typedef int sector_t ;
typedef int region_t ;



region_t dm_rh_sector_to_region(struct dm_region_hash *rh, sector_t sector)
{
 return sector >> rh->region_shift;
}
