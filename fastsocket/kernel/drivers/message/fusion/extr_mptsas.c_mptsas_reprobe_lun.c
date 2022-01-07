
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int no_uld_attach; } ;


 int scsi_device_reprobe (struct scsi_device*) ;

__attribute__((used)) static void
mptsas_reprobe_lun(struct scsi_device *sdev, void *data)
{
 int rc;

 sdev->no_uld_attach = data ? 1 : 0;
 rc = scsi_device_reprobe(sdev);
}
