
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ata_port* ap; } ;
struct domain_device {TYPE_1__ sata_dev; } ;
struct ata_port {int dummy; } ;


 int ata_port_wait_eh (struct ata_port*) ;
 int dev_is_sata (struct domain_device*) ;

void sas_ata_wait_eh(struct domain_device *dev)
{
 struct ata_port *ap;

 if (!dev_is_sata(dev))
  return;

 ap = dev->sata_dev.ap;
 ata_port_wait_eh(ap);
}
