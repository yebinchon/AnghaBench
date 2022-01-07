
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct block_device {TYPE_3__* bd_part; TYPE_2__* bd_disk; } ;
struct axon_ram_bank {scalar_t__ ph_addr; TYPE_1__* device; int size; } ;
typedef int sector_t ;
typedef int loff_t ;
struct TYPE_6__ {scalar_t__ start_sect; } ;
struct TYPE_5__ {struct axon_ram_bank* private_data; } ;
struct TYPE_4__ {int dev; } ;


 int AXON_RAM_SECTOR_SHIFT ;
 int ERANGE ;
 unsigned long PAGE_SHIFT ;
 int dev_err (int *,char*) ;
 unsigned long virt_to_phys (void**) ;

__attribute__((used)) static int
axon_ram_direct_access(struct block_device *device, sector_t sector,
         void **kaddr, unsigned long *pfn)
{
 struct axon_ram_bank *bank = device->bd_disk->private_data;
 loff_t offset;

 offset = sector;
 if (device->bd_part != ((void*)0))
  offset += device->bd_part->start_sect;
 offset <<= AXON_RAM_SECTOR_SHIFT;
 if (offset >= bank->size) {
  dev_err(&bank->device->dev, "Access outside of address space\n");
  return -ERANGE;
 }

 *kaddr = (void *)(bank->ph_addr + offset);
 *pfn = virt_to_phys(kaddr) >> PAGE_SHIFT;

 return 0;
}
