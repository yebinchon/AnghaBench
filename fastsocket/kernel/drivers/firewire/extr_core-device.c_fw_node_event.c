
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_node {struct fw_device* data; int node_id; int link_on; } ;
struct fw_device {int is_local; int work; int state; int generation; int node_id; int client_list; int client_list_mutex; int node; int card; } ;
struct fw_card {int link; int generation; struct fw_node* local_node; } ;


 int FW_DEVICE_GONE ;
 int FW_DEVICE_INITIALIZING ;
 int FW_DEVICE_RUNNING ;






 int GFP_ATOMIC ;
 int INITIAL_DELAY ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int PREPARE_DELAYED_WORK (int *,int ) ;
 int SHUTDOWN_DELAY ;
 int atomic_cmpxchg (int *,int ,int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int atomic_xchg (int *,int ) ;
 int fw_card_get (struct fw_card*) ;
 int fw_device_init ;
 int fw_device_refresh ;
 int fw_device_shutdown ;
 int fw_device_update ;
 int fw_node_get (struct fw_node*) ;
 struct fw_device* kzalloc (int,int ) ;
 int list_empty (int *) ;
 int mutex_init (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int smp_wmb () ;

void fw_node_event(struct fw_card *card, struct fw_node *node, int event)
{
 struct fw_device *device;

 switch (event) {
 case 133:
 case 129:
  if (!node->link_on)
   break;
 create:
  device = kzalloc(sizeof(*device), GFP_ATOMIC);
  if (device == ((void*)0))
   break;
  atomic_set(&device->state, FW_DEVICE_INITIALIZING);
  device->card = fw_card_get(card);
  device->node = fw_node_get(node);
  device->node_id = node->node_id;
  device->generation = card->generation;
  device->is_local = node == card->local_node;
  mutex_init(&device->client_list_mutex);
  INIT_LIST_HEAD(&device->client_list);






  node->data = device;







  INIT_DELAYED_WORK(&device->work, fw_device_init);
  schedule_delayed_work(&device->work, INITIAL_DELAY);
  break;

 case 131:
  device = node->data;
  if (device == ((void*)0))
   goto create;

  device->node_id = node->node_id;
  smp_wmb();
  device->generation = card->generation;
  if (atomic_cmpxchg(&device->state,
       FW_DEVICE_RUNNING,
       FW_DEVICE_INITIALIZING) == FW_DEVICE_RUNNING) {
   PREPARE_DELAYED_WORK(&device->work, fw_device_refresh);
   schedule_delayed_work(&device->work,
    device->is_local ? 0 : INITIAL_DELAY);
  }
  break;

 case 128:
  if (!node->link_on || node->data == ((void*)0))
   break;

  device = node->data;
  device->node_id = node->node_id;
  smp_wmb();
  device->generation = card->generation;
  if (atomic_read(&device->state) == FW_DEVICE_RUNNING) {
   PREPARE_DELAYED_WORK(&device->work, fw_device_update);
   schedule_delayed_work(&device->work, 0);
  }
  break;

 case 132:
 case 130:
  if (!node->data)
   break;
  device = node->data;
  if (atomic_xchg(&device->state,
    FW_DEVICE_GONE) == FW_DEVICE_RUNNING) {
   PREPARE_DELAYED_WORK(&device->work, fw_device_shutdown);
   schedule_delayed_work(&device->work,
    list_empty(&card->link) ? 0 : SHUTDOWN_DELAY);
  }
  break;
 }
}
