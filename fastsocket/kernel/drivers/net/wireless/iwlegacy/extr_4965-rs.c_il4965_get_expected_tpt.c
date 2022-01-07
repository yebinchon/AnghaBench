
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_scale_tbl_info {int * expected_tpt; } ;
typedef int s32 ;



__attribute__((used)) static s32
il4965_get_expected_tpt(struct il_scale_tbl_info *tbl, int rs_idx)
{
 if (tbl->expected_tpt)
  return tbl->expected_tpt[rs_idx];
 return 0;
}
