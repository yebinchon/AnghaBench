
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct domain_device {int rphy; } ;
struct asd_sas_phy {TYPE_1__* port; } ;
struct TYPE_2__ {struct domain_device* port_dev; } ;


 int ENODEV ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int sas_ata_schedule_reset (struct domain_device*) ;
 int sas_ata_wait_eh (struct domain_device*) ;
 struct domain_device* sas_find_dev_by_rphy (int ) ;

int sas_try_ata_reset(struct asd_sas_phy *asd_phy)
{
 struct domain_device *dev = ((void*)0);


 if (asd_phy->port)
  dev = asd_phy->port->port_dev;


 if (dev)
  dev = sas_find_dev_by_rphy(dev->rphy);

 if (dev && dev_is_sata(dev)) {
  sas_ata_schedule_reset(dev);
  sas_ata_wait_eh(dev);
  return 0;
 }

 return -ENODEV;
}
