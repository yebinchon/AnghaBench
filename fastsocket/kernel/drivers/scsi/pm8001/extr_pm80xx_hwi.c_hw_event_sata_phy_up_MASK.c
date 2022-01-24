#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct sas_ha_struct {int /*<<< orphan*/  (* notify_phy_event ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct pm8001_port {size_t port_state; int port_attached; } ;
struct TYPE_4__ {int /*<<< orphan*/  frame_rcvd_lock; int /*<<< orphan*/  attached_sas_addr; int /*<<< orphan*/  oob_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_type; int /*<<< orphan*/  target_port_protocols; } ;
struct pm8001_phy {int phy_attached; int frame_rcvd_size; TYPE_2__ sas_phy; TYPE_1__ identify; int /*<<< orphan*/  frame_rcvd; int /*<<< orphan*/  phy_type; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; struct sas_ha_struct* sas; struct pm8001_port* port; } ;
struct hw_event_resp {int /*<<< orphan*/  sata_fis; int /*<<< orphan*/  lr_status_evt_portid; int /*<<< orphan*/  phyid_npip_portstate; } ;
struct dev_to_host_fis {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHYE_OOB_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_TYPE_SATA ; 
 int /*<<< orphan*/  SAS_PROTOCOL_SATA ; 
 int /*<<< orphan*/  SATA_DEV ; 
 int /*<<< orphan*/  SATA_OOB_MODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pm8001_phy*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct hw_event_resp *pPayload =
		(struct hw_event_resp *)(piomb + 4);
	u32 phyid_npip_portstate = FUNC1(pPayload->phyid_npip_portstate);
	u32 lr_status_evt_portid =
		FUNC1(pPayload->lr_status_evt_portid);
	u8 link_rate =
		(u8)((lr_status_evt_portid & 0xF0000000) >> 28);
	u8 port_id = (u8)(lr_status_evt_portid & 0x000000FF);
	u8 phy_id =
		(u8)((phyid_npip_portstate & 0xFF0000) >> 16);

	u8 portstate = (u8)(phyid_npip_portstate & 0x0000000F);

	struct pm8001_port *port = &pm8001_ha->port[port_id];
	struct sas_ha_struct *sas_ha = pm8001_ha->sas;
	struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
	unsigned long flags;
	FUNC0(pm8001_ha, FUNC6(
		"port id %d, phy id %d link_rate %d portstate 0x%x\n",
				port_id, phy_id, link_rate, portstate));

	port->port_state = portstate;
	port->port_attached = 1;
	FUNC5(phy, link_rate);
	phy->phy_type |= PORT_TYPE_SATA;
	phy->phy_attached = 1;
	phy->sas_phy.oob_mode = SATA_OOB_MODE;
	sas_ha->notify_phy_event(&phy->sas_phy, PHYE_OOB_DONE);
	FUNC7(&phy->sas_phy.frame_rcvd_lock, flags);
	FUNC2(phy->frame_rcvd, ((u8 *)&pPayload->sata_fis - 4),
		sizeof(struct dev_to_host_fis));
	phy->frame_rcvd_size = sizeof(struct dev_to_host_fis);
	phy->identify.target_port_protocols = SAS_PROTOCOL_SATA;
	phy->identify.device_type = SATA_DEV;
	FUNC4(phy, phy->sas_phy.attached_sas_addr);
	FUNC8(&phy->sas_phy.frame_rcvd_lock, flags);
	FUNC3(pm8001_ha, phy_id);
}