
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int table_size; int num_gpu_pages; scalar_t__ ptr; } ;
struct radeon_device {TYPE_3__* asic; TYPE_1__ gart; } ;
struct TYPE_5__ {int * set_page; int * tlb_flush; } ;
struct TYPE_6__ {TYPE_2__ gart; } ;


 int WARN (int,char*) ;
 int r100_pci_gart_set_page ;
 int r100_pci_gart_tlb_flush ;
 int radeon_gart_init (struct radeon_device*) ;
 int radeon_gart_table_ram_alloc (struct radeon_device*) ;

int r100_pci_gart_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->gart.ptr) {
  WARN(1, "R100 PCI GART already initialized\n");
  return 0;
 }

 r = radeon_gart_init(rdev);
 if (r)
  return r;
 rdev->gart.table_size = rdev->gart.num_gpu_pages * 4;
 rdev->asic->gart.tlb_flush = &r100_pci_gart_tlb_flush;
 rdev->asic->gart.set_page = &r100_pci_gart_set_page;
 return radeon_gart_table_ram_alloc(rdev);
}
