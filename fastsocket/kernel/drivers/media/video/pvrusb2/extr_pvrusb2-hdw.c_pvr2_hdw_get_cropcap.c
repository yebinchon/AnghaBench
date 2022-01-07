
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_cropcap {int dummy; } ;
struct pvr2_hdw {int big_lock; int cropcap_info; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int memcpy (struct v4l2_cropcap*,int *,int) ;
 int pvr2_hdw_check_cropcap (struct pvr2_hdw*) ;

int pvr2_hdw_get_cropcap(struct pvr2_hdw *hdw, struct v4l2_cropcap *pp)
{
 int stat = 0;
 LOCK_TAKE(hdw->big_lock);
 stat = pvr2_hdw_check_cropcap(hdw);
 if (!stat) {
  memcpy(pp, &hdw->cropcap_info, sizeof(hdw->cropcap_info));
 }
 LOCK_GIVE(hdw->big_lock);
 return stat;
}
