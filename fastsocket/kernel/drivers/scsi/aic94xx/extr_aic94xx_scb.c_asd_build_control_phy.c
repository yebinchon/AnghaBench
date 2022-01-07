
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int opcode; } ;
struct control_phy {int phy_id; int sub_func; int port_type; int link_reset_retries; int conn_handle; int func_mask; int speed_mask; int hot_plug_delay; } ;
struct scb {TYPE_2__ header; struct control_phy control_phy; } ;
struct TYPE_7__ {int role; } ;
struct asd_phy {TYPE_4__* phy_desc; TYPE_3__ sas_phy; } ;
struct asd_ascb {int tasklet_complete; struct scb* scb; TYPE_1__* ha; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_5__ {struct asd_phy* phys; } ;


 int ASD_SATA_SPINUP_HOLD ;
 int CONTROL_PHY ;


 int FUNCTION_MASK_DEFAULT ;
 int HOTPLUG_DELAY_TIMEOUT ;
 int PHY_ROLE_INITIATOR ;
 int PHY_ROLE_TARGET ;

 int SAS_PROTOCOL_ALL ;
 int SPINUP_HOLD_DIS ;
 int control_phy_tasklet_complete ;
 int cpu_to_le16 (int) ;
 int set_speed_mask (int *,TYPE_4__*) ;

void asd_build_control_phy(struct asd_ascb *ascb, int phy_id, u8 subfunc)
{
 struct asd_phy *phy = &ascb->ha->phys[phy_id];
 struct scb *scb = ascb->scb;
 struct control_phy *control_phy = &scb->control_phy;

 scb->header.opcode = CONTROL_PHY;
 control_phy->phy_id = (u8) phy_id;
 control_phy->sub_func = subfunc;

 switch (subfunc) {
 case 129:
 case 130:

  control_phy->hot_plug_delay = HOTPLUG_DELAY_TIMEOUT;


  set_speed_mask(&control_phy->speed_mask, phy->phy_desc);


  if (phy->sas_phy.role == PHY_ROLE_INITIATOR)
   control_phy->port_type = SAS_PROTOCOL_ALL << 4;
  else if (phy->sas_phy.role == PHY_ROLE_TARGET)
   control_phy->port_type = SAS_PROTOCOL_ALL;
  else
   control_phy->port_type =
    (SAS_PROTOCOL_ALL << 4) | SAS_PROTOCOL_ALL;


  control_phy->link_reset_retries = 10;

 case 128:

  control_phy->func_mask = FUNCTION_MASK_DEFAULT;
  if (phy->phy_desc->flags & ASD_SATA_SPINUP_HOLD)
   control_phy->func_mask &= ~SPINUP_HOLD_DIS;
  else
   control_phy->func_mask |= SPINUP_HOLD_DIS;
 }

 control_phy->conn_handle = cpu_to_le16(0xFFFF);

 ascb->tasklet_complete = control_phy_tasklet_complete;
}
