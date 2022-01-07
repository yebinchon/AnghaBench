
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int dummy; } ;
struct pvr2_hdw {int big_lock; int tuner_signal_info; scalar_t__ tuner_signal_stale; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int memcpy (struct v4l2_tuner*,int *,int) ;
 int pvr2_hdw_status_poll (struct pvr2_hdw*) ;

int pvr2_hdw_get_tuner_status(struct pvr2_hdw *hdw,struct v4l2_tuner *vtp)
{
 LOCK_TAKE(hdw->big_lock); do {
  if (hdw->tuner_signal_stale) {
   pvr2_hdw_status_poll(hdw);
  }
  memcpy(vtp,&hdw->tuner_signal_info,sizeof(struct v4l2_tuner));
 } while (0); LOCK_GIVE(hdw->big_lock);
 return 0;
}
