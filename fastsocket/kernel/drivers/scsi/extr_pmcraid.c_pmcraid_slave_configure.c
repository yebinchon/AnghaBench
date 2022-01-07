
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ type; int allow_restart; TYPE_1__* host; int queue_depth; scalar_t__ tagged_supported; int request_queue; int lun; int id; int channel; struct pmcraid_resource_entry* hostdata; } ;
struct pmcraid_resource_entry {int cfg_entry; } ;
struct TYPE_2__ {int cmd_per_lun; int unique_id; } ;


 int ENXIO ;
 int MSG_SIMPLE_TAG ;
 int PMCRAID_VSET_IO_TIMEOUT ;
 int PMCRAID_VSET_MAX_SECTORS ;
 scalar_t__ RES_IS_GSCSI (int ) ;
 scalar_t__ RES_IS_VSET (int ) ;
 scalar_t__ TYPE_ENCLOSURE ;
 int blk_queue_max_hw_sectors (int ,int ) ;
 int blk_queue_rq_timeout (int ,int ) ;
 int pmcraid_info (char*,int ,int ,int ,int ) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int ) ;

__attribute__((used)) static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
{
 struct pmcraid_resource_entry *res = scsi_dev->hostdata;

 if (!res)
  return 0;


 if (RES_IS_GSCSI(res->cfg_entry) &&
     scsi_dev->type != TYPE_ENCLOSURE)
  return -ENXIO;

 pmcraid_info("configuring %x:%x:%x:%x\n",
       scsi_dev->host->unique_id,
       scsi_dev->channel,
       scsi_dev->id,
       scsi_dev->lun);

 if (RES_IS_GSCSI(res->cfg_entry)) {
  scsi_dev->allow_restart = 1;
 } else if (RES_IS_VSET(res->cfg_entry)) {
  scsi_dev->allow_restart = 1;
  blk_queue_rq_timeout(scsi_dev->request_queue,
         PMCRAID_VSET_IO_TIMEOUT);
  blk_queue_max_hw_sectors(scsi_dev->request_queue,
          PMCRAID_VSET_MAX_SECTORS);
 }

 if (scsi_dev->tagged_supported &&
     (RES_IS_GSCSI(res->cfg_entry) || RES_IS_VSET(res->cfg_entry))) {
  scsi_activate_tcq(scsi_dev, scsi_dev->queue_depth);
  scsi_adjust_queue_depth(scsi_dev, MSG_SIMPLE_TAG,
     scsi_dev->host->cmd_per_lun);
 } else {
  scsi_adjust_queue_depth(scsi_dev, 0,
     scsi_dev->host->cmd_per_lun);
 }

 return 0;
}
