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
typedef  int u32 ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  dev; int /*<<< orphan*/  num_targets; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int status; } ;
struct ibmvfc_discover_targets {int /*<<< orphan*/  error; int /*<<< orphan*/  status; int /*<<< orphan*/  num_written; TYPE_2__ common; } ;
struct TYPE_3__ {struct ibmvfc_discover_targets discover_targets; } ;

/* Variables and functions */
 int IBMVFC_DEFAULT_LOG_LEVEL ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_ALLOC_TGTS ; 
 int /*<<< orphan*/  IBMVFC_LINK_DEAD ; 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_host*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_host*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ibmvfc_event *evt)
{
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_discover_targets *rsp = &evt->xfer_iu->discover_targets;
	u32 mad_status = rsp->common.status;
	int level = IBMVFC_DEFAULT_LOG_LEVEL;

	switch (mad_status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC1(vhost, "Discover Targets succeeded\n");
		vhost->num_targets = rsp->num_written;
		FUNC7(vhost, IBMVFC_HOST_ACTION_ALLOC_TGTS);
		break;
	case IBMVFC_MAD_FAILED:
		level += FUNC6(vhost);
		FUNC5(vhost, level, "Discover Targets failed: %s (%x:%x)\n",
			   FUNC3(rsp->status, rsp->error), rsp->status, rsp->error);
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	default:
		FUNC0(vhost->dev, "Invalid Discover Targets response: 0x%x\n", mad_status);
		FUNC4(vhost, IBMVFC_LINK_DEAD);
		break;
	}

	FUNC2(evt);
	FUNC8(&vhost->work_wait_q);
}