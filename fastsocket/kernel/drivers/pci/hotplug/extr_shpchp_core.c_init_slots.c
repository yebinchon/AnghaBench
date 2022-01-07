
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct slot {int hp_slot; int number; int slot_list; int adapter_status; int latch_status; int attention_status; int power_status; scalar_t__ device; struct slot* hotplug_slot; int bus; int * ops; int * release; struct slot* private; int work; int lock; int hpc_ops; struct controller* ctrl; struct slot* info; } ;
struct hotplug_slot_info {int hp_slot; int number; int slot_list; int adapter_status; int latch_status; int attention_status; int power_status; scalar_t__ device; struct hotplug_slot_info* hotplug_slot; int bus; int * ops; int * release; struct hotplug_slot_info* private; int work; int lock; int hpc_ops; struct controller* ctrl; struct hotplug_slot_info* info; } ;
struct hotplug_slot {int hp_slot; int number; int slot_list; int adapter_status; int latch_status; int attention_status; int power_status; scalar_t__ device; struct hotplug_slot* hotplug_slot; int bus; int * ops; int * release; struct hotplug_slot* private; int work; int lock; int hpc_ops; struct controller* ctrl; struct hotplug_slot* info; } ;
struct controller {int num_slots; int first_slot; int slot_num_inc; int slot_list; TYPE_1__* pci_dev; int slot_device_offset; int hpc_ops; } ;
struct TYPE_5__ {int number; } ;
struct TYPE_4__ {TYPE_2__* subordinate; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SLOT_NAME_SIZE ;
 int ctrl_dbg (struct controller*,char*,int ,int ,scalar_t__,int,int,int ) ;
 int ctrl_err (struct controller*,char*,int) ;
 int get_adapter_status (struct slot*,int *) ;
 int get_attention_status (struct slot*,int *) ;
 int get_latch_status (struct slot*,int *) ;
 int get_power_status (struct slot*,int *) ;
 int kfree (struct slot*) ;
 struct slot* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int pci_domain_nr (TYPE_2__*) ;
 int pci_hp_register (struct slot*,TYPE_2__*,scalar_t__,char*) ;
 int release_slot ;
 int shpchp_hotplug_slot_ops ;
 int shpchp_queue_pushbutton_work ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int init_slots(struct controller *ctrl)
{
 struct slot *slot;
 struct hotplug_slot *hotplug_slot;
 struct hotplug_slot_info *info;
 char name[SLOT_NAME_SIZE];
 int retval = -ENOMEM;
 int i;

 for (i = 0; i < ctrl->num_slots; i++) {
  slot = kzalloc(sizeof(*slot), GFP_KERNEL);
  if (!slot)
   goto error;

  hotplug_slot = kzalloc(sizeof(*hotplug_slot), GFP_KERNEL);
  if (!hotplug_slot)
   goto error_slot;
  slot->hotplug_slot = hotplug_slot;

  info = kzalloc(sizeof(*info), GFP_KERNEL);
  if (!info)
   goto error_hpslot;
  hotplug_slot->info = info;

  slot->hp_slot = i;
  slot->ctrl = ctrl;
  slot->bus = ctrl->pci_dev->subordinate->number;
  slot->device = ctrl->slot_device_offset + i;
  slot->hpc_ops = ctrl->hpc_ops;
  slot->number = ctrl->first_slot + (ctrl->slot_num_inc * i);
  mutex_init(&slot->lock);
  INIT_DELAYED_WORK(&slot->work, shpchp_queue_pushbutton_work);


  hotplug_slot->private = slot;
  hotplug_slot->release = &release_slot;
  snprintf(name, SLOT_NAME_SIZE, "%d", slot->number);
  hotplug_slot->ops = &shpchp_hotplug_slot_ops;

   ctrl_dbg(ctrl, "Registering domain:bus:dev=%04x:%02x:%02x "
     "hp_slot=%x sun=%x slot_device_offset=%x\n",
     pci_domain_nr(ctrl->pci_dev->subordinate),
     slot->bus, slot->device, slot->hp_slot, slot->number,
     ctrl->slot_device_offset);
  retval = pci_hp_register(slot->hotplug_slot,
    ctrl->pci_dev->subordinate, slot->device, name);
  if (retval) {
   ctrl_err(ctrl, "pci_hp_register failed with error %d\n",
     retval);
   goto error_info;
  }

  get_power_status(hotplug_slot, &info->power_status);
  get_attention_status(hotplug_slot, &info->attention_status);
  get_latch_status(hotplug_slot, &info->latch_status);
  get_adapter_status(hotplug_slot, &info->adapter_status);

  list_add(&slot->slot_list, &ctrl->slot_list);
 }

 return 0;
error_info:
 kfree(info);
error_hpslot:
 kfree(hotplug_slot);
error_slot:
 kfree(slot);
error:
 return retval;
}
