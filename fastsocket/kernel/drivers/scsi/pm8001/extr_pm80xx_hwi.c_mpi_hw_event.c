
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct sas_ha_struct {int (* notify_port_event ) (struct asd_sas_phy*,int ) ;int (* notify_phy_event ) (struct asd_sas_phy*,int ) ;struct asd_sas_phy** sas_phy; } ;
struct asd_sas_phy {int sas_prim; int sas_prim_lock; } ;
struct pm8001_phy {int phy_attached; struct asd_sas_phy sas_phy; int phy_state; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; struct sas_ha_struct* sas; } ;
struct hw_event_resp {int phyid_npip_portstate; int lr_status_evt_portid; } ;
 int PHYE_LOSS_OF_SIGNAL ;
 int PHYE_OOB_ERROR ;
 int PHYE_SPINUP_HOLD ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int PORTE_BROADCAST_RCVD ;
 int PORTE_HARD_RESET ;
 int PORTE_LINK_RESET_ERR ;
 int hw_event_phy_down (struct pm8001_hba_info*,void*) ;
 int hw_event_sas_phy_up (struct pm8001_hba_info*,void*) ;
 int hw_event_sata_phy_up (struct pm8001_hba_info*,void*) ;
 int le32_to_cpu (int ) ;
 int pm8001_printk (char*,...) ;
 int pm80xx_hw_event_ack_req (struct pm8001_hba_info*,int ,int const,size_t,size_t,int,int ) ;
 int sas_phy_disconnected (struct asd_sas_phy*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct asd_sas_phy*,int ) ;
 int stub10 (struct asd_sas_phy*,int ) ;
 int stub11 (struct asd_sas_phy*,int ) ;
 int stub12 (struct asd_sas_phy*,int ) ;
 int stub13 (struct asd_sas_phy*,int ) ;
 int stub14 (struct asd_sas_phy*,int ) ;
 int stub15 (struct asd_sas_phy*,int ) ;
 int stub16 (struct asd_sas_phy*,int ) ;
 int stub2 (struct asd_sas_phy*,int ) ;
 int stub3 (struct asd_sas_phy*,int ) ;
 int stub4 (struct asd_sas_phy*,int ) ;
 int stub5 (struct asd_sas_phy*,int ) ;
 int stub6 (struct asd_sas_phy*,int ) ;
 int stub7 (struct asd_sas_phy*,int ) ;
 int stub8 (struct asd_sas_phy*,int ) ;
 int stub9 (struct asd_sas_phy*,int ) ;

__attribute__((used)) static int mpi_hw_event(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 unsigned long flags;
 struct hw_event_resp *pPayload =
  (struct hw_event_resp *)(piomb + 4);
 u32 lr_status_evt_portid =
  le32_to_cpu(pPayload->lr_status_evt_portid);
 u32 phyid_npip_portstate = le32_to_cpu(pPayload->phyid_npip_portstate);
 u8 port_id = (u8)(lr_status_evt_portid & 0x000000FF);
 u8 phy_id =
  (u8)((phyid_npip_portstate & 0xFF0000) >> 16);
 u16 eventType =
  (u16)((lr_status_evt_portid & 0x00FFFF00) >> 8);
 u8 status =
  (u8)((lr_status_evt_portid & 0x0F000000) >> 24);

 struct sas_ha_struct *sas_ha = pm8001_ha->sas;
 struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
 struct asd_sas_phy *sas_phy = sas_ha->sas_phy[phy_id];
 PM8001_MSG_DBG(pm8001_ha,
  pm8001_printk("portid:%d phyid:%d event:0x%x status:0x%x\n",
    port_id, phy_id, eventType, status));

 switch (eventType) {

 case 130:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_START_STATUS\n"));
  hw_event_sas_phy_up(pm8001_ha, piomb);
  break;
 case 129:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_SATA_PHY_UP\n"));
  hw_event_sata_phy_up(pm8001_ha, piomb);
  break;
 case 128:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_SATA_SPINUP_HOLD\n"));
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_SPINUP_HOLD);
  break;
 case 137:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_DOWN\n"));
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_LOSS_OF_SIGNAL);
  phy->phy_attached = 0;
  phy->phy_state = 0;
  hw_event_phy_down(pm8001_ha, piomb);
  break;
 case 135:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_INVALID\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;


 case 149:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_BROADCAST_CHANGE\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0, 149,
   port_id, phy_id, 1, 0);
  spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
  sas_phy->sas_prim = 149;
  spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
  sas_ha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);
  break;
 case 136:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_ERROR\n"));
  sas_phy_disconnected(&phy->sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_OOB_ERROR);
  break;
 case 148:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_BROADCAST_EXP\n"));
  spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
  sas_phy->sas_prim = 148;
  spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
  sas_ha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);
  break;
 case 141:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_INVALID_DWORD\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   141, port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 142:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_DISPARITY_ERROR\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   142,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 143:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_CODE_VIOLATION\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   143,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 140:
  PM8001_MSG_DBG(pm8001_ha, pm8001_printk(
    "HW_EVENT_LINK_ERR_LOSS_OF_DWORD_SYNCH\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   140,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 138:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_MALFUNCTION\n"));
  break;
 case 147:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_BROADCAST_SES\n"));
  spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
  sas_phy->sas_prim = 147;
  spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
  sas_ha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);
  break;
 case 144:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_INBOUND_CRC_ERROR\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   144,
   port_id, phy_id, 0, 0);
  break;
 case 146:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_HARD_RESET_RECEIVED\n"));
  sas_ha->notify_port_event(sas_phy, PORTE_HARD_RESET);
  break;
 case 145:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_ID_FRAME_TIMEOUT\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 139:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_PHY_RESET_FAILED\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   139,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 131:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RESET_TIMER_TMO\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 133:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RECOVERY_TIMER_TMO\n"));
  pm80xx_hw_event_ack_req(pm8001_ha, 0,
   133,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 134:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RECOVER\n"));
  break;
 case 132:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RESET_COMPLETE\n"));
  break;
 case 150:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("EVENT_BROADCAST_ASYNCH_EVENT\n"));
  break;
 default:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("Unknown event type 0x%x\n", eventType));
  break;
 }
 return 0;
}
