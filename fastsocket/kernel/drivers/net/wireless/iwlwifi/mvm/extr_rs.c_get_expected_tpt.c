
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_scale_tbl_info {int * expected_tpt; } ;
typedef int s32 ;



__attribute__((used)) static s32 get_expected_tpt(struct iwl_scale_tbl_info *tbl, int rs_index)
{
 if (tbl->expected_tpt)
  return tbl->expected_tpt[rs_index];
 return 0;
}
