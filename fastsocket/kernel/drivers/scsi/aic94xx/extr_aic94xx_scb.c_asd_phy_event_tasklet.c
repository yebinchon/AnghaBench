
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sas_ha_struct {int (* notify_phy_event ) (TYPE_1__*,int ) ;} ;
struct done_list_struct {int* status_block; } ;
struct TYPE_6__ {int iproto; int linkrate; } ;
struct asd_phy {TYPE_1__ sas_phy; } ;
struct asd_ha_struct {struct asd_phy* phys; struct sas_ha_struct sas_ha; } ;
struct asd_ascb {struct asd_ha_struct* ha; } ;


 int ASD_DPRINTK (char*,int,...) ;





 int DL_PHY_MASK ;
 int PHYE_LOSS_OF_SIGNAL ;
 int PHYE_OOB_DONE ;
 int PHYE_OOB_ERROR ;
 int PHYE_SPINUP_HOLD ;
 int PHY_EVENTS_STATUS ;
 int asd_turn_led (struct asd_ha_struct*,int,int) ;
 int get_lrate_mode (struct asd_phy*,int) ;
 int sas_phy_disconnected (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ) ;
 int stub4 (TYPE_1__*,int ) ;

__attribute__((used)) static void asd_phy_event_tasklet(struct asd_ascb *ascb,
      struct done_list_struct *dl)
{
 struct asd_ha_struct *asd_ha = ascb->ha;
 struct sas_ha_struct *sas_ha = &asd_ha->sas_ha;
 int phy_id = dl->status_block[0] & DL_PHY_MASK;
 struct asd_phy *phy = &asd_ha->phys[phy_id];

 u8 oob_status = dl->status_block[1] & PHY_EVENTS_STATUS;
 u8 oob_mode = dl->status_block[2];

 switch (oob_status) {
 case 131:

  ASD_DPRINTK("phy%d: device unplugged\n", phy_id);
  asd_turn_led(asd_ha, phy_id, 0);
  sas_phy_disconnected(&phy->sas_phy);
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_LOSS_OF_SIGNAL);
  break;
 case 130:

  asd_turn_led(asd_ha, phy_id, 1);
  get_lrate_mode(phy, oob_mode);
  ASD_DPRINTK("phy%d device plugged: lrate:0x%x, proto:0x%x\n",
       phy_id, phy->sas_phy.linkrate, phy->sas_phy.iproto);
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_OOB_DONE);
  break;
 case 128:

  asd_turn_led(asd_ha, phy_id, 1);
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_SPINUP_HOLD);
  break;
 case 132:
 case 129:
  ASD_DPRINTK("phy%d error while OOB: oob status:0x%x\n", phy_id,
       dl->status_block[1]);
  asd_turn_led(asd_ha, phy_id, 0);
  sas_phy_disconnected(&phy->sas_phy);
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_OOB_ERROR);
  break;
 }
}
