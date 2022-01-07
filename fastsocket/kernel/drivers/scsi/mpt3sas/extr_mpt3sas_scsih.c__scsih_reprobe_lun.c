
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int no_uld_attach; } ;


 int KERN_INFO ;
 int scsi_device_reprobe (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,char*) ;

__attribute__((used)) static void
_scsih_reprobe_lun(struct scsi_device *sdev, void *no_uld_attach)
{
 int rc;
 sdev->no_uld_attach = no_uld_attach ? 1 : 0;
 sdev_printk(KERN_INFO, sdev, "%s raid component\n",
     sdev->no_uld_attach ? "hidding" : "exposing");
 rc = scsi_device_reprobe(sdev);
}
