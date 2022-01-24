#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_1__* pport; int /*<<< orphan*/  cfg_enable_hba_reset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct completion {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  fc_flag; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_DV_RESET ; 
 int /*<<< orphan*/  LPFC_EVT_KILL ; 
 int /*<<< orphan*/  LPFC_EVT_OFFLINE ; 
 int /*<<< orphan*/  LPFC_EVT_ONLINE ; 
 int /*<<< orphan*/  LPFC_EVT_WARM_START ; 
 int /*<<< orphan*/  LPFC_FW_DUMP ; 
 int /*<<< orphan*/  LPFC_FW_RESET ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lpfc_hba*,int*,struct completion*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct completion*) ; 

__attribute__((used)) static ssize_t
FUNC10(struct device *dev, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct Scsi_Host  *shost = FUNC0(dev);
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	struct completion online_compl;
	char *board_mode_str = NULL;
	int status = 0;
	int rc;

	if (!phba->cfg_enable_hba_reset) {
		status = -EACCES;
		goto board_mode_out;
	}

	FUNC3(vport, KERN_ERR, LOG_INIT,
			 "3050 lpfc_board_mode set to %s\n", buf);

	FUNC1(&online_compl);

	if(FUNC8(buf, "online", sizeof("online") - 1) == 0) {
		rc = FUNC5(phba, &status, &online_compl,
				      LPFC_EVT_ONLINE);
		if (rc == 0) {
			status = -ENOMEM;
			goto board_mode_out;
		}
		FUNC9(&online_compl);
	} else if (FUNC8(buf, "offline", sizeof("offline") - 1) == 0)
		status = FUNC2(phba, LPFC_EVT_OFFLINE);
	else if (FUNC8(buf, "warm", sizeof("warm") - 1) == 0)
		if (phba->sli_rev == LPFC_SLI_REV4)
			status = -EINVAL;
		else
			status = FUNC2(phba, LPFC_EVT_WARM_START);
	else if (FUNC8(buf, "error", sizeof("error") - 1) == 0)
		if (phba->sli_rev == LPFC_SLI_REV4)
			status = -EINVAL;
		else
			status = FUNC2(phba, LPFC_EVT_KILL);
	else if (FUNC8(buf, "dump", sizeof("dump") - 1) == 0)
		status = FUNC4(phba, LPFC_FW_DUMP);
	else if (FUNC8(buf, "fw_reset", sizeof("fw_reset") - 1) == 0)
		status = FUNC4(phba, LPFC_FW_RESET);
	else if (FUNC8(buf, "dv_reset", sizeof("dv_reset") - 1) == 0)
		status = FUNC4(phba, LPFC_DV_RESET);
	else
		status = -EINVAL;

board_mode_out:
	if (!status)
		return FUNC7(buf);
	else {
		board_mode_str = FUNC6(buf, '\n');
		if (board_mode_str)
			*board_mode_str = '\0';
		FUNC3(vport, KERN_ERR, LOG_INIT,
				 "3097 Failed \"%s\", status(%d), "
				 "fc_flag(x%x)\n",
				 buf, status, phba->pport->fc_flag);
		return status;
	}
}