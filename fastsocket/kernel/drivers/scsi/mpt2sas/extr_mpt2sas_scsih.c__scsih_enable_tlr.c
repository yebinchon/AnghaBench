
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ type; } ;
struct TYPE_2__ {int IOCCapabilities; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ facts; } ;


 int KERN_INFO ;
 int MPI2_IOCFACTS_CAPABILITY_TLR ;
 scalar_t__ TYPE_TAPE ;
 int sas_enable_tlr (struct scsi_device*) ;
 scalar_t__ sas_is_tlr_enabled (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,char*) ;

__attribute__((used)) static void
_scsih_enable_tlr(struct MPT2SAS_ADAPTER *ioc, struct scsi_device *sdev)
{

 if (sdev->type != TYPE_TAPE)
  return;

 if (!(ioc->facts.IOCCapabilities & MPI2_IOCFACTS_CAPABILITY_TLR))
  return;

 sas_enable_tlr(sdev);
 sdev_printk(KERN_INFO, sdev, "TLR %s\n",
     sas_is_tlr_enabled(sdev) ? "Enabled" : "Disabled");
 return;

}
