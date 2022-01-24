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
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int FUNC2 (struct qla_hw_data*,int,int*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct qla_hw_data *ha, int addr, int *valp)
{
	int ret, loops = 0;
	scsi_qla_host_t *vha = FUNC0(ha->pdev);

	while ((FUNC3(ha) != 0) && (loops < 50000)) {
		FUNC6(100);
		FUNC5();
		loops++;
	}
	if (loops >= 50000) {
		FUNC1(ql_log_fatal, vha, 0x00b9,
		    "Failed to acquire SEM2 lock.\n");
		return -1;
	}
	ret = FUNC2(ha, addr, valp);
	FUNC4(ha);
	return ret;
}