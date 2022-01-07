
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct Scsi_Host {unsigned short host_no; } ;


 struct Scsi_Host* class_to_shost (struct device*) ;

__attribute__((used)) static int __scsi_host_match(struct device *dev, void *data)
{
 struct Scsi_Host *p;
 unsigned short *hostnum = (unsigned short *)data;

 p = class_to_shost(dev);
 return p->host_no == *hostnum;
}
