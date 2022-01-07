
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_standard {int dummy; } ;
struct pvr2_hdw {unsigned int std_enum_cnt; int big_lock; scalar_t__ std_defs; } ;


 int EINVAL ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int memcpy (struct v4l2_standard*,scalar_t__,int) ;

int pvr2_hdw_get_stdenum_value(struct pvr2_hdw *hdw,
          struct v4l2_standard *std,
          unsigned int idx)
{
 int ret = -EINVAL;
 if (!idx) return ret;
 LOCK_TAKE(hdw->big_lock); do {
  if (idx >= hdw->std_enum_cnt) break;
  idx--;
  memcpy(std,hdw->std_defs+idx,sizeof(*std));
  ret = 0;
 } while (0); LOCK_GIVE(hdw->big_lock);
 return ret;
}
