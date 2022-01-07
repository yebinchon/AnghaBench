
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct attribute_container {int * class; } ;
struct Scsi_Host {TYPE_2__* transportt; } ;
struct TYPE_6__ {int class; } ;
struct TYPE_4__ {struct attribute_container ac; } ;
struct TYPE_5__ {TYPE_1__ host_attrs; } ;


 struct Scsi_Host* dev_to_shost (struct device*) ;
 int scsi_is_host_device (struct device*) ;
 TYPE_3__ spi_host_class ;

__attribute__((used)) static int spi_host_match(struct attribute_container *cont,
     struct device *dev)
{
 struct Scsi_Host *shost;

 if (!scsi_is_host_device(dev))
  return 0;

 shost = dev_to_shost(dev);
 if (!shost->transportt || shost->transportt->host_attrs.ac.class
     != &spi_host_class.class)
  return 0;

 return &shost->transportt->host_attrs.ac == cont;
}
