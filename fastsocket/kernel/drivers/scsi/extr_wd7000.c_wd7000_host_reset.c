
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {int host_lock; scalar_t__ hostdata; } ;
struct TYPE_3__ {TYPE_2__* host; } ;
typedef int Adapter ;


 int FAILED ;
 int SUCCESS ;
 int spin_unlock_irq (int ) ;
 scalar_t__ wd7000_adapter_reset (int *) ;
 int wd7000_enable_intr (int *) ;

__attribute__((used)) static int wd7000_host_reset(struct scsi_cmnd *SCpnt)
{
 Adapter *host = (Adapter *) SCpnt->device->host->hostdata;

 spin_unlock_irq(SCpnt->device->host->host_lock);

 if (wd7000_adapter_reset(host) < 0) {
  spin_unlock_irq(SCpnt->device->host->host_lock);
  return FAILED;
 }

 wd7000_enable_intr(host);

 spin_unlock_irq(SCpnt->device->host->host_lock);
 return SUCCESS;
}
