
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ device_type; int sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct mptsas_portinfo {int num_phys; struct mptsas_phyinfo* phy_info; } ;
struct mptsas_phyinfo {int dummy; } ;
typedef int MPT_ADAPTER ;


 scalar_t__ MPI_SAS_DEVICE_INFO_EDGE_EXPANDER ;
 scalar_t__ MPI_SAS_DEVICE_INFO_FANOUT_EXPANDER ;
 scalar_t__ SAS_END_DEVICE ;
 int mptsas_del_end_device (int *,struct mptsas_phyinfo*) ;
 int mptsas_expander_delete (int *,struct mptsas_portinfo*,int) ;
 struct mptsas_portinfo* mptsas_find_portinfo_by_sas_address (int *,int ) ;
 struct sas_rphy* mptsas_get_rphy (struct mptsas_phyinfo*) ;

__attribute__((used)) static void
mptsas_delete_expander_siblings(MPT_ADAPTER *ioc, struct mptsas_portinfo
    *parent, struct mptsas_portinfo *expander)
{
 struct mptsas_phyinfo *phy_info;
 struct mptsas_portinfo *port_info;
 struct sas_rphy *rphy;
 int i;

 phy_info = expander->phy_info;
 for (i = 0; i < expander->num_phys; i++, phy_info++) {
  rphy = mptsas_get_rphy(phy_info);
  if (!rphy)
   continue;
  if (rphy->identify.device_type == SAS_END_DEVICE)
   mptsas_del_end_device(ioc, phy_info);
 }

 phy_info = expander->phy_info;
 for (i = 0; i < expander->num_phys; i++, phy_info++) {
  rphy = mptsas_get_rphy(phy_info);
  if (!rphy)
   continue;
  if (rphy->identify.device_type ==
      MPI_SAS_DEVICE_INFO_EDGE_EXPANDER ||
      rphy->identify.device_type ==
      MPI_SAS_DEVICE_INFO_FANOUT_EXPANDER) {
   port_info = mptsas_find_portinfo_by_sas_address(ioc,
       rphy->identify.sas_address);
   if (!port_info)
    continue;
   if (port_info == parent)
    continue;




   mptsas_expander_delete(ioc, port_info, 1);
  }
 }
}
