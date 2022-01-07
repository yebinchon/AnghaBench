
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_event; int enabled; scalar_t__ wb; int * wb_obj; int gpu_addr; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_1__ wb; int dev; } ;


 scalar_t__ CHIP_PALM ;
 scalar_t__ CHIP_R300 ;
 scalar_t__ CHIP_R600 ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GPU_PAGE_SIZE ;
 int RADEON_IS_AGP ;
 int dev_info (int ,char*,char*) ;
 int dev_warn (int ,char*,int) ;
 int memset (char*,int ,int ) ;
 int radeon_bo_create (struct radeon_device*,int ,int ,int,int ,int *,int **) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;
 int radeon_no_wb ;
 int radeon_wb_fini (struct radeon_device*) ;
 scalar_t__ unlikely (int) ;

int radeon_wb_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->wb.wb_obj == ((void*)0)) {
  r = radeon_bo_create(rdev, RADEON_GPU_PAGE_SIZE, PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_GTT, ((void*)0), &rdev->wb.wb_obj);
  if (r) {
   dev_warn(rdev->dev, "(%d) create WB bo failed\n", r);
   return r;
  }
 }
 r = radeon_bo_reserve(rdev->wb.wb_obj, 0);
 if (unlikely(r != 0)) {
  radeon_wb_fini(rdev);
  return r;
 }
 r = radeon_bo_pin(rdev->wb.wb_obj, RADEON_GEM_DOMAIN_GTT,
     &rdev->wb.gpu_addr);
 if (r) {
  radeon_bo_unreserve(rdev->wb.wb_obj);
  dev_warn(rdev->dev, "(%d) pin WB bo failed\n", r);
  radeon_wb_fini(rdev);
  return r;
 }
 r = radeon_bo_kmap(rdev->wb.wb_obj, (void **)&rdev->wb.wb);
 radeon_bo_unreserve(rdev->wb.wb_obj);
 if (r) {
  dev_warn(rdev->dev, "(%d) map WB bo failed\n", r);
  radeon_wb_fini(rdev);
  return r;
 }


 memset((char *)rdev->wb.wb, 0, RADEON_GPU_PAGE_SIZE);

 rdev->wb.use_event = 0;

 if (radeon_no_wb == 1) {
  rdev->wb.enabled = 0;
 } else {
  if (rdev->flags & RADEON_IS_AGP) {

   rdev->wb.enabled = 0;
  } else if (rdev->family < CHIP_R300) {

   rdev->wb.enabled = 0;
  } else {
   rdev->wb.enabled = 1;

   if (rdev->family >= CHIP_R600) {
    rdev->wb.use_event = 1;
   }
  }
 }

 if (rdev->family >= CHIP_PALM) {
  rdev->wb.enabled = 1;
  rdev->wb.use_event = 1;
 }

 dev_info(rdev->dev, "WB %sabled\n", rdev->wb.enabled ? "en" : "dis");

 return 0;
}
