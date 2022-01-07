
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct pm8001_port {size_t port_state; int port_attached; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct pm8001_phy {int dev_sas_addr; scalar_t__ phy_attached; TYPE_1__ identify; scalar_t__ phy_type; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; struct pm8001_port* port; } ;
struct hw_event_resp {int phyid_npip_portstate; int lr_status_evt_portid; } ;


 int HW_EVENT_PHY_DOWN ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;





 int SAS_ADDR_SIZE ;
 int le32_to_cpu (int ) ;
 int memset (int *,int ,int ) ;
 int pm8001_printk (char*,...) ;
 int pm80xx_hw_event_ack_req (struct pm8001_hba_info*,int ,int ,size_t,size_t,int ,int ) ;

__attribute__((used)) static void
hw_event_phy_down(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct hw_event_resp *pPayload =
  (struct hw_event_resp *)(piomb + 4);

 u32 lr_status_evt_portid =
  le32_to_cpu(pPayload->lr_status_evt_portid);
 u8 port_id = (u8)(lr_status_evt_portid & 0x000000FF);
 u32 phyid_npip_portstate = le32_to_cpu(pPayload->phyid_npip_portstate);
 u8 phy_id =
  (u8)((phyid_npip_portstate & 0xFF0000) >> 16);
 u8 portstate = (u8)(phyid_npip_portstate & 0x0000000F);

 struct pm8001_port *port = &pm8001_ha->port[port_id];
 struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
 port->port_state = portstate;
 phy->phy_type = 0;
 phy->identify.device_type = 0;
 phy->phy_attached = 0;
 memset(&phy->dev_sas_addr, 0, SAS_ADDR_SIZE);
 switch (portstate) {
 case 128:
  break;
 case 132:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" PortInvalid portID %d\n", port_id));
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" Last phy Down and port invalid\n"));
  port->port_attached = 0;
  pm80xx_hw_event_ack_req(pm8001_ha, 0, HW_EVENT_PHY_DOWN,
   port_id, phy_id, 0, 0);
  break;
 case 131:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" Port In Reset portID %d\n", port_id));
  break;
 case 129:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" phy Down and PORT_NOT_ESTABLISHED\n"));
  port->port_attached = 0;
  break;
 case 130:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" phy Down and PORT_LOSTCOMM\n"));
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" Last phy Down and port invalid\n"));
  port->port_attached = 0;
  pm80xx_hw_event_ack_req(pm8001_ha, 0, HW_EVENT_PHY_DOWN,
   port_id, phy_id, 0, 0);
  break;
 default:
  port->port_attached = 0;
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk(" phy Down and(default) = 0x%x\n",
   portstate));
  break;

 }
}
