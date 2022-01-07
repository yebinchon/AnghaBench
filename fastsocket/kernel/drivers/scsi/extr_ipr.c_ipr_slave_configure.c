
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {int scsi_level; int no_uld_attach; TYPE_2__* host; int request_queue; int type; struct ipr_resource_entry* hostdata; } ;
struct ipr_resource_entry {int res_path; TYPE_1__* sata_port; } ;
struct ipr_ioa_cfg {TYPE_3__* host; scalar_t__ sis64; } ;
struct ata_port {int dummy; } ;
typedef int buffer ;
struct TYPE_6__ {int host_lock; } ;
struct TYPE_5__ {int cmd_per_lun; scalar_t__ hostdata; } ;
struct TYPE_4__ {struct ata_port* ap; } ;


 int IPR_MAX_CMD_PER_ATA_LUN ;
 int IPR_MAX_RES_PATH_LENGTH ;
 int IPR_VSET_MAX_SECTORS ;
 int IPR_VSET_RW_TIMEOUT ;
 int KERN_INFO ;
 int TYPE_RAID ;
 int ata_sas_slave_configure (struct scsi_device*,struct ata_port*) ;
 int blk_queue_max_hw_sectors (int ,int ) ;
 int blk_queue_rq_timeout (int ,int ) ;
 int ipr_format_res_path (struct ipr_ioa_cfg*,int ,char*,int) ;
 scalar_t__ ipr_is_af_dasd_device (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_gata (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_ioa_resource (struct ipr_resource_entry*) ;
 scalar_t__ ipr_is_vset_device (struct ipr_resource_entry*) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_slave_configure(struct scsi_device *sdev)
{
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;
 struct ipr_resource_entry *res;
 struct ata_port *ap = ((void*)0);
 unsigned long lock_flags = 0;
 char buffer[IPR_MAX_RES_PATH_LENGTH];

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = sdev->hostdata;
 if (res) {
  if (ipr_is_af_dasd_device(res))
   sdev->type = TYPE_RAID;
  if (ipr_is_af_dasd_device(res) || ipr_is_ioa_resource(res)) {
   sdev->scsi_level = 4;
   sdev->no_uld_attach = 1;
  }
  if (ipr_is_vset_device(res)) {
   blk_queue_rq_timeout(sdev->request_queue,
          IPR_VSET_RW_TIMEOUT);
   blk_queue_max_hw_sectors(sdev->request_queue, IPR_VSET_MAX_SECTORS);
  }
  if (ipr_is_gata(res) && res->sata_port)
   ap = res->sata_port->ap;
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

  if (ap) {
   scsi_adjust_queue_depth(sdev, 0, IPR_MAX_CMD_PER_ATA_LUN);
   ata_sas_slave_configure(sdev, ap);
  } else
   scsi_adjust_queue_depth(sdev, 0, sdev->host->cmd_per_lun);
  if (ioa_cfg->sis64)
   sdev_printk(KERN_INFO, sdev, "Resource path: %s\n",
        ipr_format_res_path(ioa_cfg,
    res->res_path, buffer, sizeof(buffer)));
  return 0;
 }
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return 0;
}
