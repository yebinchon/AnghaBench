#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_register {int word0; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  ERR2regaddr; int /*<<< orphan*/  ERR1regaddr; int /*<<< orphan*/  STATUSregaddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  UEMASKLOregaddr; int /*<<< orphan*/  UERRLOregaddr; } ;
struct TYPE_7__ {TYPE_2__ if_type2; TYPE_1__ if_type0; } ;
struct TYPE_8__ {TYPE_3__ u; struct lpfc_register sli_intf; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  over_temp_state; TYPE_4__ sli4_hba; int /*<<< orphan*/  cfg_enable_hba_reset; int /*<<< orphan*/  pcidev; struct lpfc_vport* pport; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  event_data ;

/* Variables and functions */
 int EIO ; 
 int FC_REG_DUMP_EVENT ; 
 int /*<<< orphan*/  HBA_OVER_TEMP ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MBX_NO_WAIT ; 
#define  LPFC_SLI_INTF_IF_TYPE_0 130 
#define  LPFC_SLI_INTF_IF_TYPE_1 129 
#define  LPFC_SLI_INTF_IF_TYPE_2 128 
 int PCI_VENDOR_ID_EMULEX ; 
 int SCSI_NL_VID_TYPE_PCI ; 
 int SLIPORT_ERR1_REG_ERR_CODE_2 ; 
 int SLIPORT_ERR2_REG_FORCED_DUMP ; 
 int SLIPORT_ERR2_REG_FUNC_PROVISON ; 
 int SLIPORT_ERR2_REG_FW_RESTART ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_register*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int /*<<< orphan*/  lpfc_sliport_status_oti ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport = phba->pport;
	uint32_t event_data;
	struct Scsi_Host *shost;
	uint32_t if_type;
	struct lpfc_register portstat_reg = {0};
	uint32_t reg_err1, reg_err2;
	uint32_t uerrlo_reg, uemasklo_reg;
	uint32_t pci_rd_rc1, pci_rd_rc2;
	int rc;

	/* If the pci channel is offline, ignore possible errors, since
	 * we cannot communicate with the pci card anyway.
	 */
	if (FUNC9(phba->pcidev))
		return;
	/* If resets are disabled then leave the HBA alone and return */
	if (!phba->cfg_enable_hba_reset)
		return;

	if_type = FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
	switch (if_type) {
	case LPFC_SLI_INTF_IF_TYPE_0:
		pci_rd_rc1 = FUNC5(
				phba->sli4_hba.u.if_type0.UERRLOregaddr,
				&uerrlo_reg);
		pci_rd_rc2 = FUNC5(
				phba->sli4_hba.u.if_type0.UEMASKLOregaddr,
				&uemasklo_reg);
		/* consider PCI bus read error as pci_channel_offline */
		if (pci_rd_rc1 == -EIO && pci_rd_rc2 == -EIO)
			return;
		FUNC7(phba);
		break;
	case LPFC_SLI_INTF_IF_TYPE_2:
		pci_rd_rc1 = FUNC5(
				phba->sli4_hba.u.if_type2.STATUSregaddr,
				&portstat_reg.word0);
		/* consider PCI bus read error as pci_channel_offline */
		if (pci_rd_rc1 == -EIO) {
			FUNC4(phba, KERN_ERR, LOG_INIT,
				"3151 PCI bus read access failure: x%x\n",
				FUNC10(phba->sli4_hba.u.if_type2.STATUSregaddr));
			return;
		}
		reg_err1 = FUNC10(phba->sli4_hba.u.if_type2.ERR1regaddr);
		reg_err2 = FUNC10(phba->sli4_hba.u.if_type2.ERR2regaddr);
		if (FUNC0(lpfc_sliport_status_oti, &portstat_reg)) {
			/* TODO: Register for Overtemp async events. */
			FUNC4(phba, KERN_ERR, LOG_INIT,
				"2889 Port Overtemperature event, "
				"taking port offline\n");
			FUNC11(&phba->hbalock);
			phba->over_temp_state = HBA_OVER_TEMP;
			FUNC12(&phba->hbalock);
			FUNC7(phba);
			break;
		}
		if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
		    reg_err2 == SLIPORT_ERR2_REG_FW_RESTART)
			FUNC4(phba, KERN_ERR, LOG_INIT,
					"3143 Port Down: Firmware Restarted\n");
		else if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
			 reg_err2 == SLIPORT_ERR2_REG_FORCED_DUMP)
			FUNC4(phba, KERN_ERR, LOG_INIT,
					"3144 Port Down: Debug Dump\n");
		else if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
			 reg_err2 == SLIPORT_ERR2_REG_FUNC_PROVISON)
			FUNC4(phba, KERN_ERR, LOG_INIT,
					"3145 Port Down: Provisioning\n");

		/* Check port status register for function reset */
		rc = FUNC8(phba, LPFC_MBX_NO_WAIT);
		if (rc == 0) {
			/* don't report event on forced debug dump */
			if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
			    reg_err2 == SLIPORT_ERR2_REG_FORCED_DUMP)
				return;
			else
				break;
		}
		/* fall through for not able to recover */
		FUNC4(phba, KERN_ERR, LOG_INIT,
				"3152 Unrecoverable error, bring the port "
				"offline\n");
		FUNC7(phba);
		break;
	case LPFC_SLI_INTF_IF_TYPE_1:
	default:
		break;
	}
	FUNC4(phba, KERN_WARNING, LOG_INIT,
			"3123 Report dump event to upper layer\n");
	/* Send an internal error event to mgmt application */
	FUNC3(phba);

	event_data = FC_REG_DUMP_EVENT;
	shost = FUNC6(vport);
	FUNC2(shost, FUNC1(),
				  sizeof(event_data), (char *) &event_data,
				  SCSI_NL_VID_TYPE_PCI | PCI_VENDOR_ID_EMULEX);
}