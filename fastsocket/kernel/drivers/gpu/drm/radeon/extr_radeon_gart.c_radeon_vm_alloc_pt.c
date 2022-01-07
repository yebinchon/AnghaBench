
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct radeon_vm {int fence; int * page_directory; int * page_tables; int pd_gpu_addr; } ;
struct radeon_sa_bo {int dummy; } ;
struct TYPE_2__ {int sa_manager; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int RADEON_GPU_PAGE_ALIGN (int ) ;
 int RADEON_GPU_PAGE_SIZE ;
 int * kzalloc (unsigned int,int ) ;
 int memset (int *,int ,unsigned int) ;
 int * radeon_sa_bo_cpu_addr (int *) ;
 int radeon_sa_bo_free (struct radeon_device*,int **,int ) ;
 int radeon_sa_bo_gpu_addr (int *) ;
 int radeon_sa_bo_new (struct radeon_device*,int *,int **,unsigned int,int ,int) ;
 int radeon_vm_directory_size (struct radeon_device*) ;
 int radeon_vm_evict (struct radeon_device*,struct radeon_vm*) ;
 int radeon_vm_num_pdes (struct radeon_device*) ;

int radeon_vm_alloc_pt(struct radeon_device *rdev, struct radeon_vm *vm)
{
 unsigned pd_size, pts_size;
 u64 *pd_addr;
 int r;

 if (vm == ((void*)0)) {
  return -EINVAL;
 }

 if (vm->page_directory != ((void*)0)) {
  return 0;
 }

retry:
 pd_size = RADEON_GPU_PAGE_ALIGN(radeon_vm_directory_size(rdev));
 r = radeon_sa_bo_new(rdev, &rdev->vm_manager.sa_manager,
        &vm->page_directory, pd_size,
        RADEON_GPU_PAGE_SIZE, 0);
 if (r == -ENOMEM) {
  r = radeon_vm_evict(rdev, vm);
  if (r)
   return r;
  goto retry;

 } else if (r) {
  return r;
 }

 vm->pd_gpu_addr = radeon_sa_bo_gpu_addr(vm->page_directory);


 pd_addr = radeon_sa_bo_cpu_addr(vm->page_directory);
 memset(pd_addr, 0, pd_size);

 pts_size = radeon_vm_num_pdes(rdev) * sizeof(struct radeon_sa_bo *);
 vm->page_tables = kzalloc(pts_size, GFP_KERNEL);

 if (vm->page_tables == ((void*)0)) {
  DRM_ERROR("Cannot allocate memory for page table array\n");
  radeon_sa_bo_free(rdev, &vm->page_directory, vm->fence);
  return -ENOMEM;
 }

 return 0;
}
