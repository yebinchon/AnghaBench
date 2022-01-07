
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {struct domain_device* hostdata; TYPE_1__ dev; } ;
struct sas_rphy {int dummy; } ;
struct domain_device {int kref; } ;


 int ENODEV ;
 struct sas_rphy* dev_to_rphy (int ) ;
 int kref_get (int *) ;
 struct domain_device* sas_find_dev_by_rphy (struct sas_rphy*) ;

int sas_target_alloc(struct scsi_target *starget)
{
 struct sas_rphy *rphy = dev_to_rphy(starget->dev.parent);
 struct domain_device *found_dev = sas_find_dev_by_rphy(rphy);

 if (!found_dev)
  return -ENODEV;

 kref_get(&found_dev->kref);
 starget->hostdata = found_dev;
 return 0;
}
