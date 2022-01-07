
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct slot {struct hotplug_slot_info* hotplug_slot; } ;
struct hotplug_slot_info {int adapter_status; int latch_status; int attention_status; int power_status; int * ops; int * release; struct slot* private; struct hotplug_slot_info* info; } ;
struct hotplug_slot {int adapter_status; int latch_status; int attention_status; int power_status; int * ops; int * release; struct slot* private; struct hotplug_slot* info; } ;
struct controller {TYPE_2__* pcie; struct slot* slot; } ;
struct TYPE_7__ {int number; } ;
struct TYPE_6__ {TYPE_1__* port; } ;
struct TYPE_5__ {TYPE_3__* subordinate; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PSN (struct controller*) ;
 int SLOT_NAME_SIZE ;
 int ctrl_dbg (struct controller*,char*,int ,int ,int) ;
 int ctrl_err (struct controller*,char*,int) ;
 int get_adapter_status (struct hotplug_slot_info*,int *) ;
 int get_attention_status (struct hotplug_slot_info*,int *) ;
 int get_latch_status (struct hotplug_slot_info*,int *) ;
 int get_power_status (struct hotplug_slot_info*,int *) ;
 int kfree (struct hotplug_slot_info*) ;
 struct hotplug_slot_info* kzalloc (int,int ) ;
 int pci_domain_nr (TYPE_3__*) ;
 int pci_hp_register (struct hotplug_slot_info*,TYPE_3__*,int ,char*) ;
 int pciehp_hotplug_slot_ops ;
 int release_slot ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int init_slot(struct controller *ctrl)
{
 struct slot *slot = ctrl->slot;
 struct hotplug_slot *hotplug = ((void*)0);
 struct hotplug_slot_info *info = ((void*)0);
 char name[SLOT_NAME_SIZE];
 int retval = -ENOMEM;

 hotplug = kzalloc(sizeof(*hotplug), GFP_KERNEL);
 if (!hotplug)
  goto out;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  goto out;


 hotplug->info = info;
 hotplug->private = slot;
 hotplug->release = &release_slot;
 hotplug->ops = &pciehp_hotplug_slot_ops;
 slot->hotplug_slot = hotplug;
 snprintf(name, SLOT_NAME_SIZE, "%u", PSN(ctrl));

 ctrl_dbg(ctrl, "Registering domain:bus:dev=%04x:%02x:00 sun=%x\n",
   pci_domain_nr(ctrl->pcie->port->subordinate),
   ctrl->pcie->port->subordinate->number, PSN(ctrl));
 retval = pci_hp_register(hotplug,
     ctrl->pcie->port->subordinate, 0, name);
 if (retval) {
  ctrl_err(ctrl,
    "pci_hp_register failed with error %d\n", retval);
  goto out;
 }
 get_power_status(hotplug, &info->power_status);
 get_attention_status(hotplug, &info->attention_status);
 get_latch_status(hotplug, &info->latch_status);
 get_adapter_status(hotplug, &info->adapter_status);
out:
 if (retval) {
  kfree(info);
  kfree(hotplug);
 }
 return retval;
}
