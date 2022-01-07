
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int __scsi_host_match ;
 struct device* class_find_device (int *,int *,unsigned short*,int ) ;
 int class_to_shost (struct device*) ;
 int put_device (struct device*) ;
 struct Scsi_Host* scsi_host_get (int ) ;
 int shost_class ;

struct Scsi_Host *scsi_host_lookup(unsigned short hostnum)
{
 struct device *cdev;
 struct Scsi_Host *shost = ((void*)0);

 cdev = class_find_device(&shost_class, ((void*)0), &hostnum,
     __scsi_host_match);
 if (cdev) {
  shost = scsi_host_get(class_to_shost(cdev));
  put_device(cdev);
 }
 return shost;
}
