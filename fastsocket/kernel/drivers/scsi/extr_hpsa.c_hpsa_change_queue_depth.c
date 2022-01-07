
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; } ;
struct ctlr_info {int nr_cmds; } ;


 int ENOTSUPP ;
 int SCSI_QDEPTH_DEFAULT ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;

__attribute__((used)) static int hpsa_change_queue_depth(struct scsi_device *sdev,
 int qdepth, int reason)
{
 struct ctlr_info *h = sdev_to_hba(sdev);

 if (reason != SCSI_QDEPTH_DEFAULT)
  return -ENOTSUPP;

 if (qdepth < 1)
  qdepth = 1;
 else
  if (qdepth > h->nr_cmds)
   qdepth = h->nr_cmds;
 scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev), qdepth);
 return sdev->queue_depth;
}
