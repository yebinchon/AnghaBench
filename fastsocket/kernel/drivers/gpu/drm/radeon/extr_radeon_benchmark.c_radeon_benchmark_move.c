
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_device {TYPE_2__* asic; } ;
struct radeon_bo {int dummy; } ;
struct TYPE_3__ {scalar_t__ blit; scalar_t__ dma; } ;
struct TYPE_4__ {TYPE_1__ copy; } ;


 int DRM_ERROR (char*) ;
 int PAGE_SIZE ;
 int RADEON_BENCHMARK_COPY_BLIT ;
 int RADEON_BENCHMARK_COPY_DMA ;
 int RADEON_BENCHMARK_ITERATIONS ;
 scalar_t__ likely (int) ;
 int radeon_benchmark_do_move (struct radeon_device*,unsigned int,int ,int ,int ,int) ;
 int radeon_benchmark_log_results (int,unsigned int,int,unsigned int,unsigned int,char*) ;
 int radeon_bo_create (struct radeon_device*,unsigned int,int ,int,unsigned int,int *,struct radeon_bo**) ;
 int radeon_bo_pin (struct radeon_bo*,unsigned int,int *) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unref (struct radeon_bo**) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void radeon_benchmark_move(struct radeon_device *rdev, unsigned size,
      unsigned sdomain, unsigned ddomain)
{
 struct radeon_bo *dobj = ((void*)0);
 struct radeon_bo *sobj = ((void*)0);
 uint64_t saddr, daddr;
 int r, n;
 int time;

 n = RADEON_BENCHMARK_ITERATIONS;
 r = radeon_bo_create(rdev, size, PAGE_SIZE, 1, sdomain, ((void*)0), &sobj);
 if (r) {
  goto out_cleanup;
 }
 r = radeon_bo_reserve(sobj, 0);
 if (unlikely(r != 0))
  goto out_cleanup;
 r = radeon_bo_pin(sobj, sdomain, &saddr);
 radeon_bo_unreserve(sobj);
 if (r) {
  goto out_cleanup;
 }
 r = radeon_bo_create(rdev, size, PAGE_SIZE, 1, ddomain, ((void*)0), &dobj);
 if (r) {
  goto out_cleanup;
 }
 r = radeon_bo_reserve(dobj, 0);
 if (unlikely(r != 0))
  goto out_cleanup;
 r = radeon_bo_pin(dobj, ddomain, &daddr);
 radeon_bo_unreserve(dobj);
 if (r) {
  goto out_cleanup;
 }

 if (rdev->asic->copy.dma) {
  time = radeon_benchmark_do_move(rdev, size, saddr, daddr,
      RADEON_BENCHMARK_COPY_DMA, n);
  if (time < 0)
   goto out_cleanup;
  if (time > 0)
   radeon_benchmark_log_results(n, size, time,
           sdomain, ddomain, "dma");
 }

 if (rdev->asic->copy.blit) {
  time = radeon_benchmark_do_move(rdev, size, saddr, daddr,
      RADEON_BENCHMARK_COPY_BLIT, n);
  if (time < 0)
   goto out_cleanup;
  if (time > 0)
   radeon_benchmark_log_results(n, size, time,
           sdomain, ddomain, "blit");
 }

out_cleanup:
 if (sobj) {
  r = radeon_bo_reserve(sobj, 0);
  if (likely(r == 0)) {
   radeon_bo_unpin(sobj);
   radeon_bo_unreserve(sobj);
  }
  radeon_bo_unref(&sobj);
 }
 if (dobj) {
  r = radeon_bo_reserve(dobj, 0);
  if (likely(r == 0)) {
   radeon_bo_unpin(dobj);
   radeon_bo_unreserve(dobj);
  }
  radeon_bo_unref(&dobj);
 }

 if (r) {
  DRM_ERROR("Error while benchmarking BO move.\n");
 }
}
