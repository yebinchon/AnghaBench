#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int host_no; int this_id; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  base; scalar_t__ n_io_port; int /*<<< orphan*/  io_port; int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;
typedef  int off_t ;
struct TYPE_3__ {TYPE_2__* Sync; int /*<<< orphan*/  Lock; int /*<<< orphan*/  CurrentSC; scalar_t__ MmioLength; } ;
typedef  TYPE_1__ nsp_hw_data ;
struct TYPE_4__ {int SyncNegotiation; int SyncPeriod; int /*<<< orphan*/  SyncOffset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
#define  BURST_IO32 133 
#define  BURST_IO8 132 
#define  BURST_MEM32 131 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  SYNC_NG 130 
#define  SYNC_NOT_YET 129 
#define  SYNC_OK 128 
 int FUNC2 (int,int) ; 
 int nsp_burst_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct Scsi_Host *host, char *buffer, char **start,
			 off_t offset, int length, int inout)
{
	int id;
	char *pos = buffer;
	int thislength;
	int speed;
	unsigned long flags;
	nsp_hw_data *data;
	int hostno;

	if (inout) {
		return -EINVAL;
	}

	hostno = host->host_no;
	data = (nsp_hw_data *)host->hostdata;


	FUNC1("NinjaSCSI status\n\n");
	FUNC1("Driver version:        $Revision: 1.23 $\n");
	FUNC1("SCSI host No.:         %d\n",          hostno);
	FUNC1("IRQ:                   %d\n",          host->irq);
	FUNC1("IO:                    0x%lx-0x%lx\n", host->io_port, host->io_port + host->n_io_port - 1);
	FUNC1("MMIO(virtual address): 0x%lx-0x%lx\n", host->base, host->base + data->MmioLength - 1);
	FUNC1("sg_tablesize:          %d\n",          host->sg_tablesize);

	FUNC1("burst transfer mode:   ");
	switch (nsp_burst_mode) {
	case BURST_IO8:
		FUNC1("io8");
		break;
	case BURST_IO32:
		FUNC1("io32");
		break;
	case BURST_MEM32:
		FUNC1("mem32");
		break;
	default:
		FUNC1("???");
		break;
	}
	FUNC1("\n");


	FUNC3(&(data->Lock), flags);
	FUNC1("CurrentSC:             0x%p\n\n",      data->CurrentSC);
	FUNC4(&(data->Lock), flags);

	FUNC1("SDTR status\n");
	for(id = 0; id < FUNC0(data->Sync); id++) {

		FUNC1("id %d: ", id);

		if (id == host->this_id) {
			FUNC1("----- NinjaSCSI-3 host adapter\n");
			continue;
		}

		switch(data->Sync[id].SyncNegotiation) {
		case SYNC_OK:
			FUNC1(" sync");
			break;
		case SYNC_NG:
			FUNC1("async");
			break;
		case SYNC_NOT_YET:
			FUNC1(" none");
			break;
		default:
			FUNC1("?????");
			break;
		}

		if (data->Sync[id].SyncPeriod != 0) {
			speed = 1000000 / (data->Sync[id].SyncPeriod * 4);

			FUNC1(" transfer %d.%dMB/s, offset %d",
				speed / 1000,
				speed % 1000,
				data->Sync[id].SyncOffset
				);
		}
		FUNC1("\n");
	}

	thislength = pos - (buffer + offset);

	if(thislength < 0) {
		*start = NULL;
                return 0;
        }


	thislength = FUNC2(thislength, length);
	*start = buffer + offset;

	return thislength;
}