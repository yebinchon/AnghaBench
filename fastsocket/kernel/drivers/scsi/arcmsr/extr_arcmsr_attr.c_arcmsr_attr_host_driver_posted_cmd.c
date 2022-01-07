
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int ccboutstandingcount; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_read (int *) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
arcmsr_attr_host_driver_posted_cmd(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *host = class_to_shost(dev);
 struct AdapterControlBlock *acb =
  (struct AdapterControlBlock *) host->hostdata;
 return snprintf(buf, PAGE_SIZE,
   "%4d\n",
   atomic_read(&acb->ccboutstandingcount));
}
