
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_8__ {unsigned int count; int type; int target_lp; } ;
struct TYPE_9__ {TYPE_3__ alloc; } ;
struct TYPE_6__ {int xSubtypeData; } ;
struct TYPE_7__ {int xSubtype; TYPE_1__ x; scalar_t__ xCorrelationToken; } ;
struct TYPE_10__ {TYPE_4__ data; TYPE_2__ hp_lp_event; } ;
struct pending_event {int (* hdlr ) (void*,int) ;TYPE_5__ event; } ;
typedef int (* MFCompleteHandler ) (void*,int) ;
typedef int HvLpIndex ;
typedef int HvLpEvent_Type ;


 int ENOMEM ;
 struct pending_event* new_pending_event () ;
 int signal_event (struct pending_event*) ;
 int stub1 (void*,int) ;
 int subtype_data (char,float,char,char) ;

void mf_deallocate_lp_events(HvLpIndex target_lp, HvLpEvent_Type type,
  unsigned count, MFCompleteHandler hdlr, void *user_token)
{
 struct pending_event *ev = new_pending_event();
 int rc;

 if (ev == ((void*)0))
  rc = -ENOMEM;
 else {
  ev->event.hp_lp_event.xSubtype = 5;
  ev->event.hp_lp_event.xCorrelationToken = (u64)user_token;
  ev->event.hp_lp_event.x.xSubtypeData =
   subtype_data('M', 'F', 'M', 'D');
  ev->event.data.alloc.target_lp = target_lp;
  ev->event.data.alloc.type = type;
  ev->event.data.alloc.count = count;
  ev->hdlr = hdlr;
  rc = signal_event(ev);
 }
 if ((rc != 0) && (hdlr != ((void*)0)))
  (*hdlr)(user_token, rc);
}
