
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int BACKEND_DISABLE_MASK ;
 int BACKEND_DISABLE_SHIFT ;
 int CC_RB_BACKEND_DISABLE ;
 int GC_USER_RB_BACKEND_DISABLE ;
 int RREG32 (int ) ;
 int si_create_bitmask (int) ;

__attribute__((used)) static u32 si_get_rb_disabled(struct radeon_device *rdev,
         u32 max_rb_num, u32 se_num,
         u32 sh_per_se)
{
 u32 data, mask;

 data = RREG32(CC_RB_BACKEND_DISABLE);
 if (data & 1)
  data &= BACKEND_DISABLE_MASK;
 else
  data = 0;
 data |= RREG32(GC_USER_RB_BACKEND_DISABLE);

 data >>= BACKEND_DISABLE_SHIFT;

 mask = si_create_bitmask(max_rb_num / se_num / sh_per_se);

 return data & mask;
}
