
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct sas_phy {int enabled; TYPE_1__ dev; } ;
struct sas_internal {TYPE_2__* f; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_4__ {int (* phy_reset ) (struct sas_phy*,int) ;} ;


 struct Scsi_Host* dev_to_shost (int ) ;
 int stub1 (struct sas_phy*,int) ;
 struct sas_internal* to_sas_internal (int ) ;
 struct sas_phy* transport_class_to_phy (struct device*) ;

__attribute__((used)) static ssize_t
do_sas_phy_reset(struct device *dev, size_t count, int hard_reset)
{
 struct sas_phy *phy = transport_class_to_phy(dev);
 struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
 struct sas_internal *i = to_sas_internal(shost->transportt);
 int error;

 error = i->f->phy_reset(phy, hard_reset);
 if (error)
  return error;
 phy->enabled = 1;
 return count;
}
