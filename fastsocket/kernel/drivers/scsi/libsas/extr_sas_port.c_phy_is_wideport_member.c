
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {scalar_t__ strict_wide_ports; } ;
struct asd_sas_port {int sas_addr; int attached_sas_addr; } ;
struct asd_sas_phy {int sas_addr; int attached_sas_addr; struct sas_ha_struct* ha; } ;


 int SAS_ADDR_SIZE ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static bool phy_is_wideport_member(struct asd_sas_port *port, struct asd_sas_phy *phy)
{
 struct sas_ha_struct *sas_ha = phy->ha;

 if (memcmp(port->attached_sas_addr, phy->attached_sas_addr,
     SAS_ADDR_SIZE) != 0 || (sas_ha->strict_wide_ports &&
      memcmp(port->sas_addr, phy->sas_addr, SAS_ADDR_SIZE) != 0))
  return 0;
 return 1;
}
