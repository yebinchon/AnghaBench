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
struct mgmt_session_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct beiscsi_hba {TYPE_1__ ctrl; int /*<<< orphan*/  boot_sess; } ;
struct be_dma_mem {int /*<<< orphan*/  dma; struct be_cmd_get_session_resp* va; int /*<<< orphan*/  size; } ;
struct be_cmd_get_session_resp {int /*<<< orphan*/  session_info; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,struct be_cmd_get_session_resp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct be_cmd_get_session_resp*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC5 (struct beiscsi_hba*,unsigned int,struct be_dma_mem*) ; 
 struct be_cmd_get_session_resp* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_cmd_get_session_resp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct beiscsi_hba *phba)
{
	struct be_cmd_get_session_resp *session_resp;
	struct be_dma_mem nonemb_cmd;
	unsigned int tag;
	unsigned int s_handle;
	int ret = -ENOMEM;

	/* Get the session handle of the boot target */
	ret = FUNC0(phba, &s_handle);
	if (ret) {
		FUNC1(phba, KERN_ERR,
			    BEISCSI_LOG_INIT | BEISCSI_LOG_CONFIG,
			    "BM_%d : No boot session\n");
		return ret;
	}
	nonemb_cmd.va = FUNC6(phba->ctrl.pdev,
				sizeof(*session_resp),
				&nonemb_cmd.dma);
	if (nonemb_cmd.va == NULL) {
		FUNC1(phba, KERN_ERR,
			    BEISCSI_LOG_INIT | BEISCSI_LOG_CONFIG,
			    "BM_%d : Failed to allocate memory for"
			    "beiscsi_get_session_info\n");

		return -ENOMEM;
	}

	FUNC4(nonemb_cmd.va, 0, sizeof(*session_resp));
	tag = FUNC5(phba, s_handle,
				    &nonemb_cmd);
	if (!tag) {
		FUNC1(phba, KERN_ERR,
			    BEISCSI_LOG_INIT | BEISCSI_LOG_CONFIG,
			    "BM_%d : beiscsi_get_session_info"
			    " Failed\n");

		goto boot_freemem;
	}

	ret = FUNC2(phba, tag, NULL, nonemb_cmd.va);
	if (ret) {
		FUNC1(phba, KERN_ERR,
			    BEISCSI_LOG_INIT | BEISCSI_LOG_CONFIG,
			    "BM_%d : beiscsi_get_session_info Failed");
		goto boot_freemem;
	}

	session_resp = nonemb_cmd.va ;

	FUNC3(&phba->boot_sess, &session_resp->session_info,
	       sizeof(struct mgmt_session_info));
	ret = 0;

boot_freemem:
	FUNC7(phba->ctrl.pdev, nonemb_cmd.size,
		    nonemb_cmd.va, nonemb_cmd.dma);
	return ret;
}