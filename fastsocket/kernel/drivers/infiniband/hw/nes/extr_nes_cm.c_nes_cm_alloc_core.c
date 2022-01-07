
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; } ;
struct TYPE_4__ {int function; } ;
struct nes_cm_core {void* disconn_wq; int post_event; void* event_wq; TYPE_1__ listen_list; int listen_list_lock; int ht_lock; int * api; int events_posted; int free_tx_pkt_max; int state; int mtu; TYPE_2__ tcp_timer; int connected_nodes; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NES_CM_DEFAULT_FREE_PKTS ;
 int NES_CM_DEFAULT_MTU ;
 int NES_CM_STATE_INITED ;
 int NES_DBG_CM ;
 int atomic_set (int *,int ) ;
 void* create_singlethread_workqueue (char*) ;
 int init_timer (TYPE_2__*) ;
 struct nes_cm_core* kzalloc (int,int ) ;
 int nes_cm_api ;
 int nes_cm_post_event ;
 int nes_cm_timer_tick ;
 int nes_debug (int ,char*,...) ;
 int print_core (struct nes_cm_core*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct nes_cm_core *nes_cm_alloc_core(void)
{
 struct nes_cm_core *cm_core;



 cm_core = kzalloc(sizeof(*cm_core), GFP_KERNEL);
 if (!cm_core)
  return ((void*)0);

 INIT_LIST_HEAD(&cm_core->connected_nodes);
 init_timer(&cm_core->tcp_timer);
 cm_core->tcp_timer.function = nes_cm_timer_tick;

 cm_core->mtu = NES_CM_DEFAULT_MTU;
 cm_core->state = NES_CM_STATE_INITED;
 cm_core->free_tx_pkt_max = NES_CM_DEFAULT_FREE_PKTS;

 atomic_set(&cm_core->events_posted, 0);

 cm_core->api = &nes_cm_api;

 spin_lock_init(&cm_core->ht_lock);
 spin_lock_init(&cm_core->listen_list_lock);

 INIT_LIST_HEAD(&cm_core->listen_list.list);

 nes_debug(NES_DBG_CM, "Init CM Core completed -- cm_core=%p\n", cm_core);

 nes_debug(NES_DBG_CM, "Enable QUEUE EVENTS\n");
 cm_core->event_wq = create_singlethread_workqueue("nesewq");
 cm_core->post_event = nes_cm_post_event;
 nes_debug(NES_DBG_CM, "Enable QUEUE DISCONNECTS\n");
 cm_core->disconn_wq = create_singlethread_workqueue("nesdwq");

 print_core(cm_core);
 return cm_core;
}
