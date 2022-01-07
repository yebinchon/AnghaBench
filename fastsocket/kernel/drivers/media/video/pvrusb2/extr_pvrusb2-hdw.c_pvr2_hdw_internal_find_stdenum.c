
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {unsigned int std_enum_cnt; scalar_t__ std_mask_cur; unsigned int std_enum_cur; TYPE_1__* std_defs; } ;
struct TYPE_2__ {scalar_t__ id; } ;



__attribute__((used)) static void pvr2_hdw_internal_find_stdenum(struct pvr2_hdw *hdw)
{
 unsigned int idx;
 for (idx = 1; idx < hdw->std_enum_cnt; idx++) {
  if (hdw->std_defs[idx-1].id == hdw->std_mask_cur) {
   hdw->std_enum_cur = idx;
   return;
  }
 }
 hdw->std_enum_cur = 0;
}
