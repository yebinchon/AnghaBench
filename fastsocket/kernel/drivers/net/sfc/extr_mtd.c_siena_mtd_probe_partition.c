
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siena_nvram_type_info {scalar_t__ port; int * name; } ;
struct efx_nic {int dummy; } ;
struct TYPE_4__ {size_t size; size_t erasesize; int flags; int type; } ;
struct TYPE_3__ {unsigned int nvram_type; } ;
struct efx_mtd_partition {TYPE_2__ mtd; int * type_name; TYPE_1__ mcdi; } ;
struct efx_mtd {struct efx_mtd_partition* part; } ;


 unsigned int ARRAY_SIZE (struct siena_nvram_type_info*) ;
 int ENODEV ;
 int MTD_CAP_NORFLASH ;
 int MTD_NORFLASH ;
 int efx_mcdi_nvram_info (struct efx_nic*,unsigned int,size_t*,size_t*,int*) ;
 scalar_t__ efx_port_num (struct efx_nic*) ;
 struct siena_nvram_type_info* siena_nvram_types ;

__attribute__((used)) static int siena_mtd_probe_partition(struct efx_nic *efx,
         struct efx_mtd *efx_mtd,
         unsigned int part_id,
         unsigned int type)
{
 struct efx_mtd_partition *part = &efx_mtd->part[part_id];
 const struct siena_nvram_type_info *info;
 size_t size, erase_size;
 bool protected;
 int rc;

 if (type >= ARRAY_SIZE(siena_nvram_types) ||
     siena_nvram_types[type].name == ((void*)0))
  return -ENODEV;

 info = &siena_nvram_types[type];

 if (info->port != efx_port_num(efx))
  return -ENODEV;

 rc = efx_mcdi_nvram_info(efx, type, &size, &erase_size, &protected);
 if (rc)
  return rc;
 if (protected)
  return -ENODEV;

 part->mcdi.nvram_type = type;
 part->type_name = info->name;

 part->mtd.type = MTD_NORFLASH;
 part->mtd.flags = MTD_CAP_NORFLASH;
 part->mtd.size = size;
 part->mtd.erasesize = erase_size;

 return 0;
}
