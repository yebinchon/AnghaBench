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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct qla_hw_data *ha)
{
	int loops = 0;
	scsi_qla_host_t *vha = FUNC1(ha->pdev);

	while ((FUNC3(ha) != 0) && (loops < 50000)) {
		FUNC4(100);
		FUNC0();
		loops++;
	}
	if (loops >= 50000) {
		FUNC2(ql_log_warn, vha, 0xb010,
		    "ROM lock failed.\n");
		return -1;
	}
	return 0;
}