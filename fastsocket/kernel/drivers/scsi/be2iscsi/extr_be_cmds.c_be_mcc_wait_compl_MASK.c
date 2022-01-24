#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  used; } ;
struct TYPE_5__ {TYPE_1__ q; } ;
struct TYPE_6__ {TYPE_2__ mcc_obj; } ;
struct beiscsi_hba {int fw_timeout; TYPE_3__ ctrl; } ;

/* Variables and functions */
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_MBOX ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*) ; 
 int mcc_timeout ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct beiscsi_hba *phba)
{
	int i, status;
	for (i = 0; i < mcc_timeout; i++) {
		if (FUNC1(phba))
			return -EIO;

		status = FUNC3(phba);
		if (status)
			return status;

		if (FUNC0(&phba->ctrl.mcc_obj.q.used) == 0)
			break;
		FUNC5(100);
	}
	if (i == mcc_timeout) {
		FUNC2(phba, KERN_ERR,
			    BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
			    "BC_%d : FW Timed Out\n");
		phba->fw_timeout = true;
		FUNC4(phba);
		return -EBUSY;
	}
	return 0;
}