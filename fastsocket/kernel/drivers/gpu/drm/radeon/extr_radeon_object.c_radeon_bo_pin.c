
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct radeon_bo {int dummy; } ;


 int radeon_bo_pin_restricted (struct radeon_bo*,int ,int ,int *) ;

int radeon_bo_pin(struct radeon_bo *bo, u32 domain, u64 *gpu_addr)
{
 return radeon_bo_pin_restricted(bo, domain, 0, gpu_addr);
}
