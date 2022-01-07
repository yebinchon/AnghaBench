
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int biosVersion; } ;
struct TYPE_4__ {TYPE_2__* ioc; } ;
typedef TYPE_1__ MPT_SCSI_HOST ;
typedef TYPE_2__ MPT_ADAPTER ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 TYPE_1__* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t
mptscsih_version_bios_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct Scsi_Host *host = class_to_shost(dev);
 MPT_SCSI_HOST *hd = shost_priv(host);
 MPT_ADAPTER *ioc = hd->ioc;

 return snprintf(buf, PAGE_SIZE, "%02x.%02x.%02x.%02x\n",
     (ioc->biosVersion & 0xFF000000) >> 24,
     (ioc->biosVersion & 0x00FF0000) >> 16,
     (ioc->biosVersion & 0x0000FF00) >> 8,
     ioc->biosVersion & 0x000000FF);
}
