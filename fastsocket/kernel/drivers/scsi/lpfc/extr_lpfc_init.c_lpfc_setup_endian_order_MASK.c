#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; TYPE_1__ sli4_hba; } ;
typedef  int /*<<< orphan*/  endian_mb_data ;
struct TYPE_8__ {int /*<<< orphan*/  mqe; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef  TYPE_3__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HOST_ENDIAN_HIGH_WORD1 ; 
 int HOST_ENDIAN_LOW_WORD0 ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
#define  LPFC_SLI_INTF_IF_TYPE_0 130 
#define  LPFC_SLI_INTF_IF_TYPE_1 129 
#define  LPFC_SLI_INTF_IF_TYPE_2 128 
 int /*<<< orphan*/  MBX_POLL ; 
 int MBX_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int FUNC2 (struct lpfc_hba*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct lpfc_hba *phba)
{
	LPFC_MBOXQ_t *mboxq;
	uint32_t if_type, rc = 0;
	uint32_t endian_mb_data[2] = {HOST_ENDIAN_LOW_WORD0,
				      HOST_ENDIAN_HIGH_WORD1};

	if_type = FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
	switch (if_type) {
	case LPFC_SLI_INTF_IF_TYPE_0:
		mboxq = (LPFC_MBOXQ_t *) FUNC4(phba->mbox_mem_pool,
						       GFP_KERNEL);
		if (!mboxq) {
			FUNC1(phba, KERN_ERR, LOG_INIT,
					"0492 Unable to allocate memory for "
					"issuing SLI_CONFIG_SPECIAL mailbox "
					"command\n");
			return -ENOMEM;
		}

		/*
		 * The SLI4_CONFIG_SPECIAL mailbox command requires the first
		 * two words to contain special data values and no other data.
		 */
		FUNC6(mboxq, 0, sizeof(LPFC_MBOXQ_t));
		FUNC3(&mboxq->u.mqe, &endian_mb_data, sizeof(endian_mb_data));
		rc = FUNC2(phba, mboxq, MBX_POLL);
		if (rc != MBX_SUCCESS) {
			FUNC1(phba, KERN_ERR, LOG_INIT,
					"0493 SLI_CONFIG_SPECIAL mailbox "
					"failed with status x%x\n",
					rc);
			rc = -EIO;
		}
		FUNC5(mboxq, phba->mbox_mem_pool);
		break;
	case LPFC_SLI_INTF_IF_TYPE_2:
	case LPFC_SLI_INTF_IF_TYPE_1:
	default:
		break;
	}
	return rc;
}