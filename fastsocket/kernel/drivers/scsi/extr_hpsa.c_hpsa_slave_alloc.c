
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hpsa_scsi_dev_t* hostdata; int lun; } ;
struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int devlock; } ;


 struct hpsa_scsi_dev_t* lookup_hpsa_scsi_dev (struct ctlr_info*,int ,int ,int ) ;
 int sdev_channel (struct scsi_device*) ;
 int sdev_id (struct scsi_device*) ;
 struct ctlr_info* sdev_to_hba (struct scsi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hpsa_slave_alloc(struct scsi_device *sdev)
{
 struct hpsa_scsi_dev_t *sd;
 unsigned long flags;
 struct ctlr_info *h;

 h = sdev_to_hba(sdev);
 spin_lock_irqsave(&h->devlock, flags);
 sd = lookup_hpsa_scsi_dev(h, sdev_channel(sdev),
  sdev_id(sdev), sdev->lun);
 if (sd != ((void*)0))
  sdev->hostdata = sd;
 spin_unlock_irqrestore(&h->devlock, flags);
 return 0;
}
