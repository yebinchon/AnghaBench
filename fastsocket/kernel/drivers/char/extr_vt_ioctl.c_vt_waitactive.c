
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int newev; int event; } ;
struct vt_event_wait {scalar_t__ done; TYPE_1__ event; } ;


 int EINTR ;
 int VT_EVENT_SWITCH ;
 int fg_console ;
 int vt_event_wait (struct vt_event_wait*) ;

int vt_waitactive(int n)
{
 struct vt_event_wait vw;
 do {
  if (n == fg_console + 1)
   break;
  vw.event.event = VT_EVENT_SWITCH;
  vt_event_wait(&vw);
  if (vw.done == 0)
   return -EINTR;
 } while (vw.event.newev != n);
 return 0;
}
