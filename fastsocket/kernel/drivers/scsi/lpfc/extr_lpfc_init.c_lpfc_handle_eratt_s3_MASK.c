#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  temp_event_data ;
struct temp_event {scalar_t__ data; int /*<<< orphan*/  event_code; int /*<<< orphan*/  event_type; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_sli {size_t fcp_ring; struct lpfc_sli_ring* ring; int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {int hba_flag; int work_hs; int /*<<< orphan*/ * work_status; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  over_temp_state; struct lpfc_vport* pport; scalar_t__ MBslimaddr; int /*<<< orphan*/  cfg_enable_hba_reset; int /*<<< orphan*/  pcidev; struct lpfc_sli sli; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  event_data ;

/* Variables and functions */
 int DEFER_ERATT ; 
 scalar_t__ FC_REG_DUMP_EVENT ; 
 int /*<<< orphan*/  FC_REG_TEMPERATURE_EVENT ; 
 int /*<<< orphan*/  HBA_OVER_TEMP ; 
 int HS_CRIT_TEMP ; 
 int HS_FFER6 ; 
 int HS_FFER8 ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LOG_LINK_EVENT ; 
 int /*<<< orphan*/  LPFC_CRIT_TEMP ; 
 int /*<<< orphan*/  LPFC_MBX_NO_WAIT ; 
 int /*<<< orphan*/  LPFC_NL_VENDOR_ID ; 
 int /*<<< orphan*/  LPFC_SLI_ACTIVE ; 
 scalar_t__ TEMPERATURE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,...) ; 
 struct Scsi_Host* FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport = phba->pport;
	struct lpfc_sli   *psli = &phba->sli;
	struct lpfc_sli_ring  *pring;
	uint32_t event_data;
	unsigned long temperature;
	struct temp_event temp_event_data;
	struct Scsi_Host  *shost;

	/* If the pci channel is offline, ignore possible errors,
	 * since we cannot communicate with the pci card anyway.
	 */
	if (FUNC13(phba->pcidev)) {
		FUNC15(&phba->hbalock);
		phba->hba_flag &= ~DEFER_ERATT;
		FUNC16(&phba->hbalock);
		return;
	}

	/* If resets are disabled then leave the HBA alone and return */
	if (!phba->cfg_enable_hba_reset)
		return;

	/* Send an internal error event to mgmt application */
	FUNC2(phba);

	if (phba->hba_flag & DEFER_ERATT)
		FUNC3(phba);

	if ((phba->work_hs & HS_FFER6) || (phba->work_hs & HS_FFER8)) {
		if (phba->work_hs & HS_FFER6)
			/* Re-establishing Link */
			FUNC8(phba, KERN_INFO, LOG_LINK_EVENT,
					"1301 Re-establishing Link "
					"Data: x%x x%x x%x\n",
					phba->work_hs, phba->work_status[0],
					phba->work_status[1]);
		if (phba->work_hs & HS_FFER8)
			/* Device Zeroization */
			FUNC8(phba, KERN_INFO, LOG_LINK_EVENT,
					"2861 Host Authentication device "
					"zeroization Data:x%x x%x x%x\n",
					phba->work_hs, phba->work_status[0],
					phba->work_status[1]);

		FUNC15(&phba->hbalock);
		psli->sli_flag &= ~LPFC_SLI_ACTIVE;
		FUNC16(&phba->hbalock);

		/*
		* Firmware stops when it triggled erratt with HS_FFER6.
		* That could cause the I/Os dropped by the firmware.
		* Error iocb (I/O) on txcmplq and let the SCSI layer
		* retry it after re-establishing link.
		*/
		pring = &psli->ring[psli->fcp_ring];
		FUNC10(phba, pring);

		/*
		 * There was a firmware error.  Take the hba offline and then
		 * attempt to restart it.
		 */
		FUNC6(phba, LPFC_MBX_NO_WAIT);
		FUNC4(phba);
		FUNC11(phba);
		if (FUNC7(phba) == 0) {	/* Initialize the HBA */
			FUNC12(phba);
			return;
		}
		FUNC12(phba);
	} else if (phba->work_hs & HS_CRIT_TEMP) {
		temperature = FUNC14(phba->MBslimaddr + TEMPERATURE_OFFSET);
		temp_event_data.event_type = FC_REG_TEMPERATURE_EVENT;
		temp_event_data.event_code = LPFC_CRIT_TEMP;
		temp_event_data.data = (uint32_t)temperature;

		FUNC8(phba, KERN_ERR, LOG_INIT,
				"0406 Adapter maximum temperature exceeded "
				"(%ld), taking this port offline "
				"Data: x%x x%x x%x\n",
				temperature, phba->work_hs,
				phba->work_status[0], phba->work_status[1]);

		shost = FUNC9(phba->pport);
		FUNC1(shost, FUNC0(),
					  sizeof(temp_event_data),
					  (char *) &temp_event_data,
					  LPFC_NL_VENDOR_ID);

		FUNC15(&phba->hbalock);
		phba->over_temp_state = HBA_OVER_TEMP;
		FUNC16(&phba->hbalock);
		FUNC5(phba);

	} else {
		/* The if clause above forces this code path when the status
		 * failure is a value other than FFER6. Do not call the offline
		 * twice. This is the adapter hardware error path.
		 */
		FUNC8(phba, KERN_ERR, LOG_INIT,
				"0457 Adapter Hardware Error "
				"Data: x%x x%x x%x\n",
				phba->work_hs,
				phba->work_status[0], phba->work_status[1]);

		event_data = FC_REG_DUMP_EVENT;
		shost = FUNC9(vport);
		FUNC1(shost, FUNC0(),
				sizeof(event_data), (char *) &event_data,
				LPFC_NL_VENDOR_ID);

		FUNC5(phba);
	}
	return;
}