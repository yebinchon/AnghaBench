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
typedef  int u32 ;
struct scsi_qla_host {int /*<<< orphan*/  host_no; int /*<<< orphan*/  hardware_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(struct scsi_qla_host * ha, u32 sem_mask, u32 sem_bits)
{
	uint32_t value;
	unsigned long flags;

	FUNC4(&ha->hardware_lock, flags);
	FUNC6((sem_mask | sem_bits), FUNC1(ha));
	value = FUNC3(FUNC1(ha));
	FUNC5(&ha->hardware_lock, flags);
	if ((value & (sem_mask >> 16)) == sem_bits) {
		FUNC0(FUNC2("scsi%ld : Got SEM LOCK - mask= 0x%x, code = "
			      "0x%x, sema code=0x%x\n", ha->host_no,
			      sem_mask, sem_bits, value));
		return 1;
	}
	return 0;
}