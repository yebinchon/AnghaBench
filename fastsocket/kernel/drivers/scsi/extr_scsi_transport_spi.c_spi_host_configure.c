
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct transport_container {int dummy; } ;
struct spi_internal {TYPE_1__* f; } ;
struct kobject {int dummy; } ;
struct device {struct kobject kobj; } ;
struct attribute {int mode; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_4__ {struct attribute attr; } ;
struct TYPE_3__ {scalar_t__ set_signalling; } ;


 int S_IWUSR ;
 TYPE_2__ dev_attr_signalling ;
 int sysfs_chmod_file (struct kobject*,struct attribute*,int) ;
 struct spi_internal* to_spi_internal (int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static int spi_host_configure(struct transport_container *tc,
         struct device *dev,
         struct device *cdev)
{
 struct kobject *kobj = &cdev->kobj;
 struct Scsi_Host *shost = transport_class_to_shost(cdev);
 struct spi_internal *si = to_spi_internal(shost->transportt);
 struct attribute *attr = &dev_attr_signalling.attr;
 int rc = 0;

 if (si->f->set_signalling)
  rc = sysfs_chmod_file(kobj, attr, attr->mode | S_IWUSR);

 return rc;
}
