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
struct beiscsi_hba {int /*<<< orphan*/  conn_table; int /*<<< orphan*/  ep_array; int /*<<< orphan*/  cid_array; int /*<<< orphan*/  eh_sgl_hndl_base; int /*<<< orphan*/  io_sgl_hndl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  CMD_CONNECTION_CHUTE_0 ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct beiscsi_hba *phba)
{
	int mgmt_status;

	mgmt_status = FUNC4(phba, CMD_CONNECTION_CHUTE_0);
	if (mgmt_status)
		FUNC0(phba, KERN_WARNING, BEISCSI_LOG_INIT,
			    "BM_%d : mgmt_epfw_cleanup FAILED\n");

	FUNC2(phba);
	FUNC1(phba);
	FUNC3(phba->io_sgl_hndl_base);
	FUNC3(phba->eh_sgl_hndl_base);
	FUNC3(phba->cid_array);
	FUNC3(phba->ep_array);
	FUNC3(phba->conn_table);
}