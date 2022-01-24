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
struct ql_adapter {scalar_t__ mailbox_in; } ;
struct mbox_params {int in_count; int /*<<< orphan*/ * mbox_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR ; 
 int /*<<< orphan*/  CSR_CMD_SET_H2R_INT ; 
 int CSR_HRI ; 
 int EIO ; 
 int /*<<< orphan*/  SEM_PROC_REG_MASK ; 
 int FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ql_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
	int i, status;

	/*
	 * Make sure there's nothing pending.
	 * This shouldn't happen.
	 */
	if (FUNC0(qdev, CSR) & CSR_HRI)
		return -EIO;

	status = FUNC1(qdev, SEM_PROC_REG_MASK);
	if (status)
		return status;

	/*
	 * Fill the outbound mailboxes.
	 */
	for (i = 0; i < mbcp->in_count; i++) {
		status = FUNC4(qdev, qdev->mailbox_in + i,
						mbcp->mbox_in[i]);
		if (status)
			goto end;
	}
	/*
	 * Wake up the MPI firmware.
	 */
	FUNC3(qdev, CSR, CSR_CMD_SET_H2R_INT);
end:
	FUNC2(qdev, SEM_PROC_REG_MASK);
	return status;
}