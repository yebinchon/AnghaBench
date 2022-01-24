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
typedef  int uint32_t ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 scalar_t__ FUNC3 (struct scsi_qla_host*,int,int*) ; 
 scalar_t__ FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static uint32_t *
FUNC7(struct scsi_qla_host *ha, uint32_t *dwptr,
    uint32_t faddr, uint32_t length)
{
	uint32_t i;
	uint32_t val;
	int loops = 0;
	while ((FUNC4(ha) != 0) && (loops < 50000)) {
		FUNC6(100);
		FUNC1();
		loops++;
	}
	if (loops >= 50000) {
		FUNC2(KERN_WARNING, ha, "ROM lock failed\n");
		return dwptr;
	}

	/* Dword reads to flash. */
	for (i = 0; i < length/4; i++, faddr += 4) {
		if (FUNC3(ha, faddr, &val)) {
			FUNC2(KERN_WARNING, ha,
			    "Do ROM fast read failed\n");
			goto done_read;
		}
		dwptr[i] = FUNC0(val);
	}

done_read:
	FUNC5(ha);
	return dwptr;
}