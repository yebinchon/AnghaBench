
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int num_cpu_pages; int* pages_addr; int ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int PAGE_SIZE ;
 int RADEON_GPU_PAGE_SIZE ;
 int mb () ;
 int radeon_gart_set_page (struct radeon_device*,int,int) ;
 int radeon_gart_tlb_flush (struct radeon_device*) ;

void radeon_gart_restore(struct radeon_device *rdev)
{
 int i, j, t;
 u64 page_base;

 if (!rdev->gart.ptr) {
  return;
 }
 for (i = 0, t = 0; i < rdev->gart.num_cpu_pages; i++) {
  page_base = rdev->gart.pages_addr[i];
  for (j = 0; j < (PAGE_SIZE / RADEON_GPU_PAGE_SIZE); j++, t++) {
   radeon_gart_set_page(rdev, t, page_base);
   page_base += RADEON_GPU_PAGE_SIZE;
  }
 }
 mb();
 radeon_gart_tlb_flush(rdev);
}
