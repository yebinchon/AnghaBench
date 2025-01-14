
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_4__ {unsigned int* pages_addr; scalar_t__ ptr; int ** pages; int ready; } ;
struct TYPE_3__ {unsigned int addr; } ;
struct radeon_device {TYPE_2__ gart; TYPE_1__ dummy_page; } ;


 unsigned int PAGE_SIZE ;
 unsigned int RADEON_GPU_PAGE_SIZE ;
 int WARN (int,char*) ;
 int mb () ;
 int radeon_gart_set_page (struct radeon_device*,unsigned int,unsigned int) ;
 int radeon_gart_tlb_flush (struct radeon_device*) ;

void radeon_gart_unbind(struct radeon_device *rdev, unsigned offset,
   int pages)
{
 unsigned t;
 unsigned p;
 int i, j;
 u64 page_base;

 if (!rdev->gart.ready) {
  WARN(1, "trying to unbind memory from uninitialized GART !\n");
  return;
 }
 t = offset / RADEON_GPU_PAGE_SIZE;
 p = t / (PAGE_SIZE / RADEON_GPU_PAGE_SIZE);
 for (i = 0; i < pages; i++, p++) {
  if (rdev->gart.pages[p]) {
   rdev->gart.pages[p] = ((void*)0);
   rdev->gart.pages_addr[p] = rdev->dummy_page.addr;
   page_base = rdev->gart.pages_addr[p];
   for (j = 0; j < (PAGE_SIZE / RADEON_GPU_PAGE_SIZE); j++, t++) {
    if (rdev->gart.ptr) {
     radeon_gart_set_page(rdev, t, page_base);
    }
    page_base += RADEON_GPU_PAGE_SIZE;
   }
  }
 }
 mb();
 radeon_gart_tlb_flush(rdev);
}
