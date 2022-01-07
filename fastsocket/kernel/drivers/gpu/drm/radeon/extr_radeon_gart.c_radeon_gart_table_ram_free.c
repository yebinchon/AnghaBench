
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table_size; scalar_t__ table_addr; int * ptr; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ gart; int pdev; } ;


 scalar_t__ CHIP_RS400 ;
 scalar_t__ CHIP_RS480 ;
 scalar_t__ CHIP_RS690 ;
 scalar_t__ CHIP_RS740 ;
 int PAGE_SHIFT ;
 int pci_free_consistent (int ,int,void*,scalar_t__) ;
 int set_memory_wb (unsigned long,int) ;

void radeon_gart_table_ram_free(struct radeon_device *rdev)
{
 if (rdev->gart.ptr == ((void*)0)) {
  return;
 }







 pci_free_consistent(rdev->pdev, rdev->gart.table_size,
       (void *)rdev->gart.ptr,
       rdev->gart.table_addr);
 rdev->gart.ptr = ((void*)0);
 rdev->gart.table_addr = 0;
}
