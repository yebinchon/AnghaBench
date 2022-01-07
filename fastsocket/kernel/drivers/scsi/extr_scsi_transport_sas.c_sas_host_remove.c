
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport_container {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* dev_to_shost (struct device*) ;
 int sas_bsg_remove (struct Scsi_Host*,int *) ;

__attribute__((used)) static int sas_host_remove(struct transport_container *tc, struct device *dev,
      struct device *cdev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);

 sas_bsg_remove(shost, ((void*)0));

 return 0;
}
