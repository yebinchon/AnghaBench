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
struct scsi_qla_host {int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_RCVPEG_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ PHAN_PEG_RCV_INITIALIZED ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct scsi_qla_host *ha)
{
	uint32_t state = 0;
	int loops = 0;

	/* Window 1 call */
	FUNC3(&ha->hw_lock);
	state = FUNC2(ha, CRB_RCVPEG_STATE);
	FUNC4(&ha->hw_lock);

	while ((state != PHAN_PEG_RCV_INITIALIZED) && (loops < 30000)) {
		FUNC5(100);
		/* Window 1 call */
		FUNC3(&ha->hw_lock);
		state = FUNC2(ha, CRB_RCVPEG_STATE);
		FUNC4(&ha->hw_lock);

		loops++;
	}

	if (loops >= 30000) {
		FUNC0(FUNC1(KERN_INFO, ha,
		    "Receive Peg initialization not complete: 0x%x.\n", state));
		return QLA_ERROR;
	}

	return QLA_SUCCESS;
}