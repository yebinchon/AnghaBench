
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_device {int * hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {TYPE_5__* sata_port; int * sdev; } ;
struct ipr_ioa_cfg {TYPE_6__* host; } ;
struct TYPE_12__ {int host_lock; } ;
struct TYPE_11__ {TYPE_4__* ap; } ;
struct TYPE_9__ {TYPE_2__* device; } ;
struct TYPE_10__ {TYPE_3__ link; } ;
struct TYPE_8__ {int class; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;


 int ATA_DEV_NONE ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ipr_slave_destroy(struct scsi_device *sdev)
{
 struct ipr_resource_entry *res;
 struct ipr_ioa_cfg *ioa_cfg;
 unsigned long lock_flags = 0;

 ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = (struct ipr_resource_entry *) sdev->hostdata;
 if (res) {
  if (res->sata_port)
   res->sata_port->ap->link.device[0].class = ATA_DEV_NONE;
  sdev->hostdata = ((void*)0);
  res->sdev = ((void*)0);
  res->sata_port = ((void*)0);
 }
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
}
