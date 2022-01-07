
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* cm_id; } ;
struct nes_cm_event {int event_work; TYPE_4__* cm_node; TYPE_1__ cm_info; } ;
struct TYPE_8__ {TYPE_2__* cm_core; } ;
struct TYPE_7__ {int (* add_ref ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int event_wq; int events_posted; } ;


 int INIT_WORK (int *,int ) ;
 int NES_DBG_CM ;
 int add_ref_cm_node (TYPE_4__*) ;
 int atomic_inc (int *) ;
 int nes_cm_event_handler ;
 int nes_debug (int ,char*,...) ;
 int queue_work (int ,int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int nes_cm_post_event(struct nes_cm_event *event)
{
 atomic_inc(&event->cm_node->cm_core->events_posted);
 add_ref_cm_node(event->cm_node);
 event->cm_info.cm_id->add_ref(event->cm_info.cm_id);
 INIT_WORK(&event->event_work, nes_cm_event_handler);
 nes_debug(NES_DBG_CM, "cm_node=%p queue_work, event=%p\n",
    event->cm_node, event);

 queue_work(event->cm_node->cm_core->event_wq, &event->event_work);

 nes_debug(NES_DBG_CM, "Exit\n");
 return 0;
}
