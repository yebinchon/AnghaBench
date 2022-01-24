#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct lpfc_register {int /*<<< orphan*/  word0; } ;
union lpfc_sli4_cfg_shdr {struct lpfc_register response; } ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_18__ {int /*<<< orphan*/  ERR2regaddr; int /*<<< orphan*/  ERR1regaddr; int /*<<< orphan*/  STATUSregaddr; int /*<<< orphan*/  CTRLregaddr; } ;
struct TYPE_19__ {TYPE_6__ if_type2; } ;
struct TYPE_20__ {TYPE_7__ u; struct lpfc_register sli_intf; } ;
struct lpfc_hba {void** work_status; TYPE_8__ sli4_hba; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_13__ {int /*<<< orphan*/  cfg_shdr; } ;
struct TYPE_14__ {TYPE_1__ header; } ;
struct TYPE_15__ {TYPE_2__ sli4_config; } ;
struct TYPE_16__ {TYPE_3__ un; } ;
struct TYPE_17__ {TYPE_4__ mqe; } ;
struct TYPE_21__ {TYPE_5__ u; } ;
typedef  TYPE_9__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MBOX_OPCODE_FUNCTION_RESET ; 
 int /*<<< orphan*/  LPFC_MBOX_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  LPFC_SLI4_MBX_EMBED ; 
 int /*<<< orphan*/  LPFC_SLIPORT_INIT_PORT ; 
 int /*<<< orphan*/  LPFC_SLIPORT_LITTLE_ENDIAN ; 
#define  LPFC_SLI_INTF_IF_TYPE_0 130 
#define  LPFC_SLI_INTF_IF_TYPE_1 129 
#define  LPFC_SLI_INTF_IF_TYPE_2 128 
 int MAX_IF_TYPE_2_RESETS ; 
 int /*<<< orphan*/  MBX_POLL ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_register*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lpfc_register*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_mbox_hdr_add_status ; 
 int /*<<< orphan*/  lpfc_mbox_hdr_status ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int FUNC5 (struct lpfc_hba*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sliport_ctrl_end ; 
 int /*<<< orphan*/  lpfc_sliport_ctrl_ip ; 
 int /*<<< orphan*/  lpfc_sliport_status_err ; 
 int /*<<< orphan*/  lpfc_sliport_status_rdy ; 
 int /*<<< orphan*/  lpfc_sliport_status_rn ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(struct lpfc_hba *phba)
{
	LPFC_MBOXQ_t *mboxq;
	uint32_t rc = 0, if_type;
	uint32_t shdr_status, shdr_add_status;
	uint32_t rdy_chk, num_resets = 0, reset_again = 0;
	union lpfc_sli4_cfg_shdr *shdr;
	struct lpfc_register reg_data;
	uint16_t devid;

	if_type = FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
	switch (if_type) {
	case LPFC_SLI_INTF_IF_TYPE_0:
		mboxq = (LPFC_MBOXQ_t *) FUNC6(phba->mbox_mem_pool,
						       GFP_KERNEL);
		if (!mboxq) {
			FUNC2(phba, KERN_ERR, LOG_INIT,
					"0494 Unable to allocate memory for "
					"issuing SLI_FUNCTION_RESET mailbox "
					"command\n");
			return -ENOMEM;
		}

		/* Setup PCI function reset mailbox-ioctl command */
		FUNC4(phba, mboxq, LPFC_MBOX_SUBSYSTEM_COMMON,
				 LPFC_MBOX_OPCODE_FUNCTION_RESET, 0,
				 LPFC_SLI4_MBX_EMBED);
		rc = FUNC5(phba, mboxq, MBX_POLL);
		shdr = (union lpfc_sli4_cfg_shdr *)
			&mboxq->u.mqe.un.sli4_config.header.cfg_shdr;
		shdr_status = FUNC0(lpfc_mbox_hdr_status, &shdr->response);
		shdr_add_status = FUNC0(lpfc_mbox_hdr_add_status,
					 &shdr->response);
		if (rc != MBX_TIMEOUT)
			FUNC7(mboxq, phba->mbox_mem_pool);
		if (shdr_status || shdr_add_status || rc) {
			FUNC2(phba, KERN_ERR, LOG_INIT,
					"0495 SLI_FUNCTION_RESET mailbox "
					"failed with status x%x add_status x%x,"
					" mbx status x%x\n",
					shdr_status, shdr_add_status, rc);
			rc = -ENXIO;
		}
		break;
	case LPFC_SLI_INTF_IF_TYPE_2:
		for (num_resets = 0;
		     num_resets < MAX_IF_TYPE_2_RESETS;
		     num_resets++) {
			reg_data.word0 = 0;
			FUNC1(lpfc_sliport_ctrl_end, &reg_data,
			       LPFC_SLIPORT_LITTLE_ENDIAN);
			FUNC1(lpfc_sliport_ctrl_ip, &reg_data,
			       LPFC_SLIPORT_INIT_PORT);
			FUNC11(reg_data.word0, phba->sli4_hba.u.if_type2.
			       CTRLregaddr);
			/* flush */
			FUNC9(phba->pcidev,
					     PCI_DEVICE_ID, &devid);
			/*
			 * Poll the Port Status Register and wait for RDY for
			 * up to 10 seconds.  If the port doesn't respond, treat
			 * it as an error.  If the port responds with RN, start
			 * the loop again.
			 */
			for (rdy_chk = 0; rdy_chk < 1000; rdy_chk++) {
				FUNC8(10);
				if (FUNC3(phba->sli4_hba.u.if_type2.
					      STATUSregaddr, &reg_data.word0)) {
					rc = -ENODEV;
					goto out;
				}
				if (FUNC0(lpfc_sliport_status_rn, &reg_data))
					reset_again++;
				if (FUNC0(lpfc_sliport_status_rdy, &reg_data))
					break;
			}

			/*
			 * If the port responds to the init request with
			 * reset needed, delay for a bit and restart the loop.
			 */
			if (reset_again && (rdy_chk < 1000)) {
				FUNC8(10);
				reset_again = 0;
				continue;
			}

			/* Detect any port errors. */
			if ((FUNC0(lpfc_sliport_status_err, &reg_data)) ||
			    (rdy_chk >= 1000)) {
				phba->work_status[0] = FUNC10(
					phba->sli4_hba.u.if_type2.ERR1regaddr);
				phba->work_status[1] = FUNC10(
					phba->sli4_hba.u.if_type2.ERR2regaddr);
				FUNC2(phba, KERN_ERR, LOG_INIT,
					"2890 Port error detected during port "
					"reset(%d): wait_tmo:%d ms, "
					"port status reg 0x%x, "
					"error 1=0x%x, error 2=0x%x\n",
					num_resets, rdy_chk*10,
					reg_data.word0,
					phba->work_status[0],
					phba->work_status[1]);
				rc = -ENODEV;
			}

			/*
			 * Terminate the outer loop provided the Port indicated
			 * ready within 10 seconds.
			 */
			if (rdy_chk < 1000)
				break;
		}
		/* delay driver action following IF_TYPE_2 function reset */
		FUNC8(100);
		break;
	case LPFC_SLI_INTF_IF_TYPE_1:
	default:
		break;
	}

out:
	/* Catch the not-ready port failure after a port reset. */
	if (num_resets >= MAX_IF_TYPE_2_RESETS) {
		FUNC2(phba, KERN_ERR, LOG_INIT,
				"3317 HBA not functional: IP Reset Failed "
				"after (%d) retries, try: "
				"echo fw_reset > board_mode\n", num_resets);
		rc = -ENODEV;
	}

	return rc;
}