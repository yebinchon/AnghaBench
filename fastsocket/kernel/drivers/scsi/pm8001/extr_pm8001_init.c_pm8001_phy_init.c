
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {int enabled; int id; struct pm8001_phy* lldd_phy; struct sas_ha_struct* ha; int * frame_rcvd; int * sas_addr; int linkrate; int oob_mode; int role; int type; scalar_t__ tproto; int iproto; int class; } ;
struct pm8001_phy {int * frame_rcvd; struct pm8001_hba_info* pm8001_ha; scalar_t__ phy_state; struct asd_sas_phy sas_phy; } ;
struct pm8001_hba_info {TYPE_2__* shost; int * sas_addr; TYPE_1__* chip; struct pm8001_phy* phy; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {int n_phy; } ;


 int OOB_NOT_CONNECTED ;
 int PHY_ROLE_INITIATOR ;
 int PHY_TYPE_PHYSICAL ;
 int SAS ;
 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PROTOCOL_ALL ;

__attribute__((used)) static void pm8001_phy_init(struct pm8001_hba_info *pm8001_ha, int phy_id)
{
 struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 phy->phy_state = 0;
 phy->pm8001_ha = pm8001_ha;
 sas_phy->enabled = (phy_id < pm8001_ha->chip->n_phy) ? 1 : 0;
 sas_phy->class = SAS;
 sas_phy->iproto = SAS_PROTOCOL_ALL;
 sas_phy->tproto = 0;
 sas_phy->type = PHY_TYPE_PHYSICAL;
 sas_phy->role = PHY_ROLE_INITIATOR;
 sas_phy->oob_mode = OOB_NOT_CONNECTED;
 sas_phy->linkrate = SAS_LINK_RATE_UNKNOWN;
 sas_phy->id = phy_id;
 sas_phy->sas_addr = &pm8001_ha->sas_addr[0];
 sas_phy->frame_rcvd = &phy->frame_rcvd[0];
 sas_phy->ha = (struct sas_ha_struct *)pm8001_ha->shost->hostdata;
 sas_phy->lldd_phy = phy;
}
