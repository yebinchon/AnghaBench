
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct sas_phy {size_t number; TYPE_2__ dev; } ;
struct sas_internal {TYPE_1__* dft; } ;
struct TYPE_8__ {TYPE_3__* shost; } ;
struct sas_ha_struct {TYPE_4__ core; struct asd_sas_phy** sas_phy; } ;
struct asd_sas_phy {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int transportt; } ;
struct TYPE_5__ {int (* lldd_control_phy ) (struct asd_sas_phy*,int ,int *) ;} ;


 int PHY_FUNC_GET_EVENTS ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int sas_smp_get_phy_events (struct sas_phy*) ;
 scalar_t__ scsi_is_sas_phy_local (struct sas_phy*) ;
 int stub1 (struct asd_sas_phy*,int ,int *) ;
 struct sas_internal* to_sas_internal (int ) ;

__attribute__((used)) static int sas_get_linkerrors(struct sas_phy *phy)
{
 if (scsi_is_sas_phy_local(phy)) {
  struct Scsi_Host *shost = dev_to_shost(phy->dev.parent);
  struct sas_ha_struct *sas_ha = SHOST_TO_SAS_HA(shost);
  struct asd_sas_phy *asd_phy = sas_ha->sas_phy[phy->number];
  struct sas_internal *i =
   to_sas_internal(sas_ha->core.shost->transportt);

  return i->dft->lldd_control_phy(asd_phy, PHY_FUNC_GET_EVENTS, ((void*)0));
 }

 return sas_smp_get_phy_events(phy);
}
