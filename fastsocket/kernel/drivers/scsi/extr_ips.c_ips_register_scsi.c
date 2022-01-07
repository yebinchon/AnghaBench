
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct Scsi_Host {int max_sectors; scalar_t__ can_queue; scalar_t__ max_channel; int max_lun; int max_id; TYPE_1__* hostt; int use_clustering; int cmd_per_lun; int sg_tablesize; scalar_t__ unique_id; } ;
struct TYPE_12__ {TYPE_9__* pcidev; scalar_t__ max_cmds; scalar_t__ nbus; int nlun; int ntargets; scalar_t__ mem_addr; scalar_t__ io_addr; } ;
typedef TYPE_2__ ips_ha_t ;
struct TYPE_13__ {int irq; int dev; } ;
struct TYPE_11__ {int use_clustering; int cmd_per_lun; scalar_t__ can_queue; int sg_tablesize; } ;


 TYPE_2__* IPS_HA (struct Scsi_Host*) ;
 int IPS_PRINTK (int ,TYPE_9__*,char*) ;
 int IRQF_SHARED ;
 int KERN_WARNING ;
 int do_ipsintr ;
 int free_irq (int ,TYPE_2__*) ;
 int ips_driver_template ;
 TYPE_2__** ips_ha ;
 int ips_name ;
 struct Scsi_Host** ips_sh ;
 int kfree (TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ request_irq (int ,int ,int ,int ,TYPE_2__*) ;
 scalar_t__ scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;

__attribute__((used)) static int
ips_register_scsi(int index)
{
 struct Scsi_Host *sh;
 ips_ha_t *ha, *oldha = ips_ha[index];
 sh = scsi_host_alloc(&ips_driver_template, sizeof (ips_ha_t));
 if (!sh) {
  IPS_PRINTK(KERN_WARNING, oldha->pcidev,
      "Unable to register controller with SCSI subsystem\n");
  return -1;
 }
 ha = IPS_HA(sh);
 memcpy(ha, oldha, sizeof (ips_ha_t));
 free_irq(oldha->pcidev->irq, oldha);

 if (request_irq(ha->pcidev->irq, do_ipsintr, IRQF_SHARED, ips_name, ha)) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Unable to install interrupt handler\n");
  goto err_out_sh;
 }

 kfree(oldha);


 sh->unique_id = (ha->io_addr) ? ha->io_addr : ha->mem_addr;
 sh->sg_tablesize = sh->hostt->sg_tablesize;
 sh->can_queue = sh->hostt->can_queue;
 sh->cmd_per_lun = sh->hostt->cmd_per_lun;
 sh->use_clustering = sh->hostt->use_clustering;
 sh->max_sectors = 128;

 sh->max_id = ha->ntargets;
 sh->max_lun = ha->nlun;
 sh->max_channel = ha->nbus - 1;
 sh->can_queue = ha->max_cmds - 1;

 if (scsi_add_host(sh, &ha->pcidev->dev))
  goto err_out;

 ips_sh[index] = sh;
 ips_ha[index] = ha;

 scsi_scan_host(sh);

 return 0;

err_out:
 free_irq(ha->pcidev->irq, ha);
err_out_sh:
 scsi_host_put(sh);
 return -1;
}
