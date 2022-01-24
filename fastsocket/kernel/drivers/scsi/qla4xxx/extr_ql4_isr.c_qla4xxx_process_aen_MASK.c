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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct scsi_qla_host {size_t aen_out; size_t aen_in; int /*<<< orphan*/  hardware_lock; int /*<<< orphan*/  host_no; int /*<<< orphan*/  aen_q_count; struct aen* aen_q; } ;
struct aen {int* mbox_sts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  FLUSH_DDB_CHANGED_AENS 130 
 int MAX_AEN_ENTRIES ; 
 int MBOX_AEN_REG_COUNT ; 
#define  MBOX_ASTS_DATABASE_CHANGED 129 
#define  PROCESS_ALL_AENS 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct scsi_qla_host * ha, uint8_t process_aen)
{
	uint32_t mbox_sts[MBOX_AEN_REG_COUNT];
	struct aen *aen;
	int i;
	unsigned long flags;

	FUNC3(&ha->hardware_lock, flags);
	while (ha->aen_out != ha->aen_in) {
		aen = &ha->aen_q[ha->aen_out];
		/* copy aen information to local structure */
		for (i = 0; i < MBOX_AEN_REG_COUNT; i++)
			mbox_sts[i] = aen->mbox_sts[i];

		ha->aen_q_count++;
		ha->aen_out++;

		if (ha->aen_out == MAX_AEN_ENTRIES)
			ha->aen_out = 0;

		FUNC4(&ha->hardware_lock, flags);

		FUNC0(FUNC1("qla4xxx(%ld): AEN[%d]=0x%08x, mbx1=0x%08x mbx2=0x%08x"
			" mbx3=0x%08x mbx4=0x%08x\n", ha->host_no,
			(ha->aen_out ? (ha->aen_out-1): (MAX_AEN_ENTRIES-1)),
			mbox_sts[0], mbox_sts[1], mbox_sts[2],
			mbox_sts[3], mbox_sts[4]));

		switch (mbox_sts[0]) {
		case MBOX_ASTS_DATABASE_CHANGED:
			switch (process_aen) {
			case FLUSH_DDB_CHANGED_AENS:
				FUNC0(FUNC1("scsi%ld: AEN[%d] %04x, index "
					      "[%d] state=%04x FLUSHED!\n",
					      ha->host_no, ha->aen_out,
					      mbox_sts[0], mbox_sts[2],
					      mbox_sts[3]));
				break;
			case PROCESS_ALL_AENS:
			default:
				/* Specific device. */
				if (mbox_sts[1] == 1)
					FUNC2(ha,
						mbox_sts[2], mbox_sts[3],
						mbox_sts[4]);
				break;
			}
		}
		FUNC3(&ha->hardware_lock, flags);
	}
	FUNC4(&ha->hardware_lock, flags);
}