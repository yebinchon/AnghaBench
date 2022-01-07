
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct sas_phy {int port_siblings; struct device dev; } ;


 int BUG_ON (int) ;
 int device_del (struct device*) ;
 int list_empty (int *) ;
 int put_device (struct device*) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;

void
sas_phy_delete(struct sas_phy *phy)
{
 struct device *dev = &phy->dev;


 BUG_ON(!list_empty(&phy->port_siblings));

 transport_remove_device(dev);
 device_del(dev);
 transport_destroy_device(dev);
 put_device(dev);
}
