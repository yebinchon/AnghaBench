
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {unsigned int input_allowed_mask; unsigned int input_avail_mask; int input_val; int big_lock; } ;
typedef int m ;


 int EPERM ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_hdw_set_input (struct pvr2_hdw*,unsigned int) ;

int pvr2_hdw_set_input_allowed(struct pvr2_hdw *hdw,
          unsigned int change_mask,
          unsigned int change_val)
{
 int ret = 0;
 unsigned int nv,m,idx;
 LOCK_TAKE(hdw->big_lock);
 do {
  nv = hdw->input_allowed_mask & ~change_mask;
  nv |= (change_val & change_mask);
  nv &= hdw->input_avail_mask;
  if (!nv) {

   ret = -EPERM;
   break;
  }
  hdw->input_allowed_mask = nv;
  if ((1 << hdw->input_val) & hdw->input_allowed_mask) {


   break;
  }


  if (!hdw->input_allowed_mask) {

   break;
  }
  m = hdw->input_allowed_mask;
  for (idx = 0; idx < (sizeof(m) << 3); idx++) {
   if (!((1 << idx) & m)) continue;
   pvr2_hdw_set_input(hdw,idx);
   break;
  }
 } while (0);
 LOCK_GIVE(hdw->big_lock);
 return ret;
}
