
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_2__* scsi_dh_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* scsi_dh; } ;
struct TYPE_3__ {char* name; } ;


 int snprintf (char*,int,char*,...) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
show_dh_state(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 if (!sdev->scsi_dh_data)
  return snprintf(buf, 20, "detached\n");

 return snprintf(buf, 20, "%s\n", sdev->scsi_dh_data->scsi_dh->name);
}
