
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int big_lock; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_hdw_status_poll (struct pvr2_hdw*) ;

void pvr2_hdw_execute_tuner_poll(struct pvr2_hdw *hdw)
{
 LOCK_TAKE(hdw->big_lock); do {
  pvr2_hdw_status_poll(hdw);
 } while (0); LOCK_GIVE(hdw->big_lock);
}
