
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_cs_parser {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int dev_warn (int ,char*,int,int) ;
 int* r600_reg_safe_bm ;

__attribute__((used)) static bool r600_is_safe_reg(struct radeon_cs_parser *p, u32 reg, u32 idx)
{
 u32 m, i;

 i = (reg >> 7);
 if (i >= ARRAY_SIZE(r600_reg_safe_bm)) {
  dev_warn(p->dev, "forbidden register 0x%08x at %d\n", reg, idx);
  return 0;
 }
 m = 1 << ((reg >> 2) & 31);
 if (!(r600_reg_safe_bm[i] & m))
  return 1;
 dev_warn(p->dev, "forbidden register 0x%08x at %d\n", reg, idx);
 return 0;
}
