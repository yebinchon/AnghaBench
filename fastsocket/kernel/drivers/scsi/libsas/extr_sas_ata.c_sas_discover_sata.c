
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {scalar_t__ dev_type; int port; int rphy; } ;


 int DISCE_PROBE ;
 int ENODEV ;
 scalar_t__ SATA_PM ;
 int sas_discover_event (int ,int ) ;
 int sas_fill_in_rphy (struct domain_device*,int ) ;
 int sas_get_ata_command_set (struct domain_device*) ;
 int sas_notify_lldd_dev_found (struct domain_device*) ;

int sas_discover_sata(struct domain_device *dev)
{
 int res;

 if (dev->dev_type == SATA_PM)
  return -ENODEV;

 sas_get_ata_command_set(dev);
 sas_fill_in_rphy(dev, dev->rphy);

 res = sas_notify_lldd_dev_found(dev);
 if (res)
  return res;

 sas_discover_event(dev->port, DISCE_PROBE);
 return 0;
}
