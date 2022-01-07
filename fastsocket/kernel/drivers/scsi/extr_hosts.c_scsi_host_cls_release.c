
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int shost_gendev; } ;


 TYPE_1__* class_to_shost (struct device*) ;
 int put_device (int *) ;

__attribute__((used)) static void scsi_host_cls_release(struct device *dev)
{
 put_device(&class_to_shost(dev)->shost_gendev);
}
