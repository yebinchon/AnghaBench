
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {scalar_t__ state_stale; int master_state; int state_wait_data; } ;


 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int pvr2_hdw_wait(struct pvr2_hdw *hdw,int state)
{
 return wait_event_interruptible(
  hdw->state_wait_data,
  (hdw->state_stale == 0) &&
  (!state || (hdw->master_state != state)));
}
