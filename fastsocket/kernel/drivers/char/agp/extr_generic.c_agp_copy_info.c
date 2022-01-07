
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int minor; int major; } ;
struct agp_kern_info {int mode; unsigned long page_mask; int vm_ops; int cant_use_aperture; int current_memory; int max_memory; int aper_size; int aper_base; int device; int chipset; TYPE_1__ version; } ;
struct agp_bridge_data {int mode; int vm_ops; TYPE_3__* driver; int current_memory_agp; int max_memory_agp; int gart_bus_addr; int dev; TYPE_2__* version; } ;
struct TYPE_6__ {int cant_use_aperture; } ;
struct TYPE_5__ {int minor; int major; } ;


 int AGP2_RESERVED_MASK ;
 int AGP3_RESERVED_MASK ;
 int AGPSTAT_MODE_3_0 ;
 int EIO ;
 int NOT_SUPPORTED ;
 int SUPPORTED ;
 int agp_return_size () ;
 int atomic_read (int *) ;
 int memset (struct agp_kern_info*,int ,int) ;

int agp_copy_info(struct agp_bridge_data *bridge, struct agp_kern_info *info)
{
 memset(info, 0, sizeof(struct agp_kern_info));
 if (!bridge) {
  info->chipset = NOT_SUPPORTED;
  return -EIO;
 }

 info->version.major = bridge->version->major;
 info->version.minor = bridge->version->minor;
 info->chipset = SUPPORTED;
 info->device = bridge->dev;
 if (bridge->mode & AGPSTAT_MODE_3_0)
  info->mode = bridge->mode & ~AGP3_RESERVED_MASK;
 else
  info->mode = bridge->mode & ~AGP2_RESERVED_MASK;
 info->aper_base = bridge->gart_bus_addr;
 info->aper_size = agp_return_size();
 info->max_memory = bridge->max_memory_agp;
 info->current_memory = atomic_read(&bridge->current_memory_agp);
 info->cant_use_aperture = bridge->driver->cant_use_aperture;
 info->vm_ops = bridge->vm_ops;
 info->page_mask = ~0UL;
 return 0;
}
