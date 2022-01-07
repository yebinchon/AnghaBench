
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_type; } ;
struct device {int dummy; } ;
struct sas_rphy {TYPE_1__ identify; struct device dev; } ;





 int device_del (struct device*) ;
 int sas_remove_children (struct device*) ;
 int sas_rphy_unlink (struct sas_rphy*) ;
 int scsi_remove_target (struct device*) ;
 int transport_remove_device (struct device*) ;

void
sas_rphy_remove(struct sas_rphy *rphy)
{
 struct device *dev = &rphy->dev;

 switch (rphy->identify.device_type) {
 case 129:
  scsi_remove_target(dev);
  break;
 case 130:
 case 128:
  sas_remove_children(dev);
  break;
 default:
  break;
 }

 sas_rphy_unlink(rphy);
 transport_remove_device(dev);
 device_del(dev);
}
