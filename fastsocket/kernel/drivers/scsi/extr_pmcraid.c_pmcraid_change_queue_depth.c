
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; } ;


 int EOPNOTSUPP ;
 int PMCRAID_MAX_CMD_PER_LUN ;
 int SCSI_QDEPTH_DEFAULT ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;

__attribute__((used)) static int pmcraid_change_queue_depth(struct scsi_device *scsi_dev, int depth,
          int reason)
{
 if (reason != SCSI_QDEPTH_DEFAULT)
  return -EOPNOTSUPP;

 if (depth > PMCRAID_MAX_CMD_PER_LUN)
  depth = PMCRAID_MAX_CMD_PER_LUN;

 scsi_adjust_queue_depth(scsi_dev, scsi_get_tag_type(scsi_dev), depth);

 return scsi_dev->queue_depth;
}
