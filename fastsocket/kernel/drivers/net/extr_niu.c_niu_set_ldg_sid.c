
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int EINVAL ;
 int NIU_LDG_MAX ;
 int NIU_LDG_MIN ;
 int SID (int) ;
 int SID_FUNC_SHIFT ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_set_ldg_sid(struct niu *np, int ldg, int func, int vector)
{
 if ((ldg < NIU_LDG_MIN || ldg > NIU_LDG_MAX) ||
     (func < 0 || func > 3) ||
     (vector < 0 || vector > 0x1f))
  return -EINVAL;

 nw64(SID(ldg), (func << SID_FUNC_SHIFT) | vector);

 return 0;
}
