
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int big_lock; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_hdw_commit_setup (struct pvr2_hdw*) ;
 int pvr2_hdw_wait (struct pvr2_hdw*,int ) ;

int pvr2_hdw_commit_ctl(struct pvr2_hdw *hdw)
{
 int fl;
 LOCK_TAKE(hdw->big_lock);
 fl = pvr2_hdw_commit_setup(hdw);
 LOCK_GIVE(hdw->big_lock);
 if (!fl) return 0;
 return pvr2_hdw_wait(hdw,0);
}
