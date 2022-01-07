
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_2__* hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* vtarget; } ;
typedef TYPE_2__ VirtDevice ;
struct TYPE_3__ {int id; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
mptscsih_device_fw_id_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 VirtDevice *vdevice = sdev->hostdata;

 if (vdevice && vdevice->vtarget)
  return snprintf(buf, PAGE_SIZE, "0x%04x\n",
      vdevice->vtarget->id);
 else
  return snprintf(buf, PAGE_SIZE, "0x0\n");
}
