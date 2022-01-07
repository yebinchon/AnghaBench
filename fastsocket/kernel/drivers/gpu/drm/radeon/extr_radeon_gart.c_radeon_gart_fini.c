
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ready; int * pages_addr; int * pages; int num_cpu_pages; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int radeon_dummy_page_fini (struct radeon_device*) ;
 int radeon_gart_unbind (struct radeon_device*,int ,int ) ;
 int vfree (int *) ;

void radeon_gart_fini(struct radeon_device *rdev)
{
 if (rdev->gart.pages && rdev->gart.pages_addr && rdev->gart.ready) {

  radeon_gart_unbind(rdev, 0, rdev->gart.num_cpu_pages);
 }
 rdev->gart.ready = 0;
 vfree(rdev->gart.pages);
 vfree(rdev->gart.pages_addr);
 rdev->gart.pages = ((void*)0);
 rdev->gart.pages_addr = ((void*)0);

 radeon_dummy_page_fini(rdev);
}
