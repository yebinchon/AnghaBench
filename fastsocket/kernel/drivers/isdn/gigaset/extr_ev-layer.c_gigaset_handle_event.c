
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cardstate {TYPE_2__* inbuf; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_3__ {int (* handle_input ) (TYPE_2__*) ;} ;


 int DEBUG_INTR ;
 int gig_dbg (int ,char*) ;
 int process_events (struct cardstate*) ;
 int stub1 (TYPE_2__*) ;

void gigaset_handle_event(unsigned long data)
{
 struct cardstate *cs = (struct cardstate *) data;


 if (cs->inbuf->head != cs->inbuf->tail) {
  gig_dbg(DEBUG_INTR, "processing new data");
  cs->ops->handle_input(cs->inbuf);
 }

 process_events(cs);
}
