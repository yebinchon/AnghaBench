
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target_port_protocols; int device_type; } ;
struct sas_phy {TYPE_1__ identify; } ;
struct domain_device {scalar_t__ tproto; int dev_type; } ;
struct asd_sas_phy {struct sas_phy* phy; } ;


 int SAS_END_DEVICE ;
 int SAS_PHY_UNUSED ;
 scalar_t__ dev_is_sata (struct domain_device*) ;

__attribute__((used)) static inline void sas_phy_set_target(struct asd_sas_phy *p, struct domain_device *dev)
{
 struct sas_phy *phy = p->phy;

 if (dev) {
  if (dev_is_sata(dev))
   phy->identify.device_type = SAS_END_DEVICE;
  else
   phy->identify.device_type = dev->dev_type;
  phy->identify.target_port_protocols = dev->tproto;
 } else {
  phy->identify.device_type = SAS_PHY_UNUSED;
  phy->identify.target_port_protocols = 0;
 }
}
