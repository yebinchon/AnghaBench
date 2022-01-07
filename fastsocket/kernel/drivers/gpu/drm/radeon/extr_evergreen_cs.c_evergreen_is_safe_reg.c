
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_cs_parser {int dev; TYPE_1__* rdev; } ;
struct TYPE_2__ {scalar_t__ family; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ CHIP_CAYMAN ;
 int* cayman_reg_safe_bm ;
 int dev_warn (int ,char*,int,int) ;
 int* evergreen_reg_safe_bm ;

__attribute__((used)) static bool evergreen_is_safe_reg(struct radeon_cs_parser *p, u32 reg, u32 idx)
{
 u32 last_reg, m, i;

 if (p->rdev->family >= CHIP_CAYMAN)
  last_reg = ARRAY_SIZE(cayman_reg_safe_bm);
 else
  last_reg = ARRAY_SIZE(evergreen_reg_safe_bm);

 i = (reg >> 7);
 if (i >= last_reg) {
  dev_warn(p->dev, "forbidden register 0x%08x at %d\n", reg, idx);
  return 0;
 }
 m = 1 << ((reg >> 2) & 31);
 if (p->rdev->family >= CHIP_CAYMAN) {
  if (!(cayman_reg_safe_bm[i] & m))
   return 1;
 } else {
  if (!(evergreen_reg_safe_bm[i] & m))
   return 1;
 }
 dev_warn(p->dev, "forbidden register 0x%08x at %d\n", reg, idx);
 return 0;
}
