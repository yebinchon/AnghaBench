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
typedef  void* uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_SEM2_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLA82XX_ROM_LOCK_ID ; 
 int /*<<< orphan*/  ROM_LOCK_DRIVER ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,void*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 void* FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int qla82xx_rom_lock_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct qla_hw_data *ha)
{
	int done = 0, timeout = 0;
	uint32_t lock_owner = 0;
	scsi_qla_host_t *vha = FUNC1(ha->pdev);

	while (!done) {
		/* acquire semaphore2 from PCI HW block */
		done = FUNC3(ha, FUNC0(PCIE_SEM2_LOCK));
		if (done == 1)
			break;
		if (timeout >= qla82xx_rom_lock_timeout) {
			lock_owner = FUNC3(ha, QLA82XX_ROM_LOCK_ID);
			FUNC2(ql_dbg_p3p, vha, 0xb085,
			    "Failed to acquire rom lock, acquired by %d.\n",
			    lock_owner);
			return -1;
		}
		timeout++;
	}
	FUNC4(ha, QLA82XX_ROM_LOCK_ID, ROM_LOCK_DRIVER);
	return 0;
}