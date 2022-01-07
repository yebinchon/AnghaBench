
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nes_cm_node {scalar_t__ cm_id; int loc_port; int rem_port; int loc_addr; int rem_addr; } ;
struct TYPE_2__ {int rem_port; int rem_addr; int loc_port; int loc_addr; scalar_t__ cm_id; } ;
struct nes_cm_event {int type; TYPE_1__ cm_info; struct nes_cm_node* cm_node; } ;
typedef enum nes_cm_event_type { ____Placeholder_nes_cm_event_type } nes_cm_event_type ;


 int GFP_ATOMIC ;
 int NES_DBG_CM ;
 struct nes_cm_event* kzalloc (int,int ) ;
 int nes_cm_post_event (struct nes_cm_event*) ;
 int nes_debug (int ,char*,struct nes_cm_node*,struct nes_cm_event*,int,int ,int ,int ,int ) ;

__attribute__((used)) static struct nes_cm_event *create_event(struct nes_cm_node * cm_node,
      enum nes_cm_event_type type)
{
 struct nes_cm_event *event;

 if (!cm_node->cm_id)
  return ((void*)0);


 event = kzalloc(sizeof(*event), GFP_ATOMIC);

 if (!event)
  return ((void*)0);

 event->type = type;
 event->cm_node = cm_node;
 event->cm_info.rem_addr = cm_node->rem_addr;
 event->cm_info.loc_addr = cm_node->loc_addr;
 event->cm_info.rem_port = cm_node->rem_port;
 event->cm_info.loc_port = cm_node->loc_port;
 event->cm_info.cm_id = cm_node->cm_id;

 nes_debug(NES_DBG_CM, "cm_node=%p Created event=%p, type=%u, "
    "dst_addr=%08x[%x], src_addr=%08x[%x]\n",
    cm_node, event, type, event->cm_info.loc_addr,
    event->cm_info.loc_port, event->cm_info.rem_addr,
    event->cm_info.rem_port);

 nes_cm_post_event(event);
 return event;
}
