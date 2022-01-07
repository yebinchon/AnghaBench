
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int CMNG_FNS_MINMAX ;
 int CMNG_FNS_NONE ;
 scalar_t__ IS_MF (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_get_cmng_fns_mode(struct bnx2x *bp)
{
 if (CHIP_REV_IS_SLOW(bp))
  return CMNG_FNS_NONE;
 if (IS_MF(bp))
  return CMNG_FNS_MINMAX;

 return CMNG_FNS_NONE;
}
