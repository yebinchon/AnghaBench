#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hpsb_host {int node_id; int is_root; int irm_id; int is_irm; int is_cycmst; scalar_t__ in_bus_reset; int /*<<< orphan*/  generation; TYPE_1__* driver; scalar_t__ is_busmgr; int /*<<< orphan*/  node_count; scalar_t__ reset_retries; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* devctl ) (struct hpsb_host*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_CYCLE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int LOCAL_BUS ; 
 int /*<<< orphan*/  LONG_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct hpsb_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_host*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct hpsb_host *host, int phyid, int isroot)
{
	if (!host->in_bus_reset)
		FUNC0("SelfID completion called outside of bus reset!");

	host->node_id = LOCAL_BUS | phyid;
	host->is_root = isroot;

	if (!FUNC4(host)) {
		if (host->reset_retries++ < 20) {
			/* selfid stage did not complete without error */
			FUNC0("Error in SelfID stage, resetting");
			host->in_bus_reset = 0;
			/* this should work from ohci1394 now... */
			FUNC6(host, LONG_RESET);
			return;
		} else {
			FUNC0("Stopping out-of-control reset loop");
			FUNC0("Warning - topology map and speed map will not be valid");
			host->reset_retries = 0;
		}
	} else {
		host->reset_retries = 0;
		FUNC3(host, host->node_count);
	}

	FUNC1("selfid_complete called with successful SelfID stage "
		     "... irm_id: 0x%X node_id: 0x%X",host->irm_id,host->node_id);

	/* irm_id is kept up to date by check_selfids() */
	if (host->irm_id == host->node_id) {
		host->is_irm = 1;
	} else {
		host->is_busmgr = 0;
		host->is_irm = 0;
	}

	if (isroot) {
		host->driver->devctl(host, ACT_CYCLE_MASTER, 1);
		host->is_cycmst = 1;
	}
	FUNC2(&host->generation);
	host->in_bus_reset = 0;
	FUNC5(host);
}