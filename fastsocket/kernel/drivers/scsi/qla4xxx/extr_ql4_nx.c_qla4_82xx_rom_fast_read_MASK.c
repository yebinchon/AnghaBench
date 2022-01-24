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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scsi_qla_host*,int,int*) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct scsi_qla_host *ha, int addr, int *valp)
{
	int ret, loops = 0;

	while ((FUNC2(ha) != 0) && (loops < 50000)) {
		FUNC4(100);
		loops++;
	}
	if (loops >= 50000) {
		FUNC0(KERN_WARNING, ha, "%s: qla4_82xx_rom_lock failed\n",
			   DRIVER_NAME);
		return -1;
	}
	ret = FUNC1(ha, addr, valp);
	FUNC3(ha);
	return ret;
}