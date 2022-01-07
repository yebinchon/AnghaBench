
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_type; int target_port_protocols; int initiator_port_protocols; int sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct domain_device {int dev_type; int tproto; int iproto; int sas_addr; } ;




 int SAS_ADDR (int ) ;
 int SAS_EDGE_EXPANDER_DEVICE ;

 int SAS_END_DEVICE ;
 int SAS_FANOUT_EXPANDER_DEVICE ;
 int SAS_PHY_UNUSED ;



__attribute__((used)) static inline void sas_fill_in_rphy(struct domain_device *dev,
        struct sas_rphy *rphy)
{
 rphy->identify.sas_address = SAS_ADDR(dev->sas_addr);
 rphy->identify.initiator_port_protocols = dev->iproto;
 rphy->identify.target_port_protocols = dev->tproto;
 switch (dev->dev_type) {
 case 129:

 case 130:
 case 128:
  rphy->identify.device_type = SAS_END_DEVICE;
  break;
 case 132:
  rphy->identify.device_type = SAS_EDGE_EXPANDER_DEVICE;
  break;
 case 131:
  rphy->identify.device_type = SAS_FANOUT_EXPANDER_DEVICE;
  break;
 default:
  rphy->identify.device_type = SAS_PHY_UNUSED;
  break;
 }
}
