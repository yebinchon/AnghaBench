
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ue_count; } ;
struct edac_device_instance {int nr_blocks; int name; TYPE_2__ counters; struct edac_device_block* blocks; } ;
struct TYPE_6__ {int ue_count; } ;
struct edac_device_ctl_info {int nr_instances; int ctl_name; TYPE_3__ counters; struct edac_device_instance* instances; } ;
struct TYPE_4__ {int ue_count; } ;
struct edac_device_block {char* name; TYPE_1__ counters; } ;


 int KERN_EMERG ;
 int KERN_ERR ;
 scalar_t__ edac_device_get_log_ue (struct edac_device_ctl_info*) ;
 scalar_t__ edac_device_get_panic_on_ue (struct edac_device_ctl_info*) ;
 int edac_device_printk (struct edac_device_ctl_info*,int ,char*,int,int,...) ;
 int panic (char*,int ,int ,char*,char const*) ;

void edac_device_handle_ue(struct edac_device_ctl_info *edac_dev,
   int inst_nr, int block_nr, const char *msg)
{
 struct edac_device_instance *instance;
 struct edac_device_block *block = ((void*)0);

 if ((inst_nr >= edac_dev->nr_instances) || (inst_nr < 0)) {
  edac_device_printk(edac_dev, KERN_ERR,
    "INTERNAL ERROR: 'instance' out of range "
    "(%d >= %d)\n", inst_nr,
    edac_dev->nr_instances);
  return;
 }

 instance = edac_dev->instances + inst_nr;

 if ((block_nr >= instance->nr_blocks) || (block_nr < 0)) {
  edac_device_printk(edac_dev, KERN_ERR,
    "INTERNAL ERROR: instance %d 'block' "
    "out of range (%d >= %d)\n",
    inst_nr, block_nr,
    instance->nr_blocks);
  return;
 }

 if (instance->nr_blocks > 0) {
  block = instance->blocks + block_nr;
  block->counters.ue_count++;
 }


 instance->counters.ue_count++;
 edac_dev->counters.ue_count++;

 if (edac_device_get_log_ue(edac_dev))
  edac_device_printk(edac_dev, KERN_EMERG,
    "UE: %s instance: %s block: %s '%s'\n",
    edac_dev->ctl_name, instance->name,
    block ? block->name : "N/A", msg);

 if (edac_device_get_panic_on_ue(edac_dev))
  panic("EDAC %s: UE instance: %s block %s '%s'\n",
   edac_dev->ctl_name, instance->name,
   block ? block->name : "N/A", msg);
}
