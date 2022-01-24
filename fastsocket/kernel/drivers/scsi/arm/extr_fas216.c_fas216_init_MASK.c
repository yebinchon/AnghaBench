#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int this_id; scalar_t__ hostdata; } ;
struct TYPE_11__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_9__ {int /*<<< orphan*/  issue; int /*<<< orphan*/  disconnected; } ;
struct TYPE_8__ {int* cfg; int /*<<< orphan*/  msgs; int /*<<< orphan*/  async_stp; } ;
struct TYPE_7__ {int cntl3; int /*<<< orphan*/  asyncperiod; } ;
struct TYPE_10__ {int rst_dev_status; int rst_bus_status; TYPE_3__ queues; TYPE_2__ scsi; int /*<<< orphan*/  stats; int /*<<< orphan*/  host_lock; TYPE_5__ eh_timer; int /*<<< orphan*/  eh_wait; TYPE_1__ ifcfg; struct Scsi_Host* host; void* magic_end; void* magic_start; } ;
typedef  TYPE_4__ FAS216_Info ;

/* Variables and functions */
 int CNTL1_PERE ; 
 int CNTL2_ENF ; 
 int CNTL2_S2FE ; 
 int CNTL3_ADIDCHK ; 
 int CNTL3_G2CB ; 
 int CNTL3_LBTM ; 
 int CNTL3_QTAG ; 
 int ENOMEM ; 
 void* MAGIC ; 
 int /*<<< orphan*/  fas216_eh_timer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct Scsi_Host *host)
{
	FAS216_Info *info = (FAS216_Info *)host->hostdata;

	info->magic_start    = MAGIC;
	info->magic_end      = MAGIC;
	info->host           = host;
	info->scsi.cfg[0]    = host->this_id | CNTL1_PERE;
	info->scsi.cfg[1]    = CNTL2_ENF | CNTL2_S2FE;
	info->scsi.cfg[2]    = info->ifcfg.cntl3 |
			       CNTL3_ADIDCHK | CNTL3_QTAG | CNTL3_G2CB | CNTL3_LBTM;
	info->scsi.async_stp = FUNC0(info, info->ifcfg.asyncperiod);

	info->rst_dev_status = -1;
	info->rst_bus_status = -1;
	FUNC2(&info->eh_wait);
	FUNC1(&info->eh_timer);
	info->eh_timer.data  = (unsigned long)info;
	info->eh_timer.function = fas216_eh_timer;
	
	FUNC7(&info->host_lock);

	FUNC3(&info->stats, 0, sizeof(info->stats));

	FUNC4(&info->scsi.msgs);

	if (!FUNC6(&info->queues.issue))
		return -ENOMEM;

	if (!FUNC6(&info->queues.disconnected)) {
		FUNC5(&info->queues.issue);
		return -ENOMEM;
	}

	return 0;
}