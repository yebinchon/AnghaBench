#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ibmvfc_host {int /*<<< orphan*/  action; int /*<<< orphan*/  sent; } ;
struct ibmvfc_event {TYPE_3__* xfer_iu; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct TYPE_6__ {TYPE_2__ npiv_logout; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_LOGO_WAIT ; 
#define  IBMVFC_MAD_CRQ_ERROR 132 
#define  IBMVFC_MAD_DRIVER_FAILED 131 
#define  IBMVFC_MAD_FAILED 130 
#define  IBMVFC_MAD_NOT_SUPPORTED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ibmvfc_event *evt)
{
	struct ibmvfc_host *vhost = evt->vhost;
	u32 mad_status = evt->xfer_iu->npiv_logout.common.status;

	FUNC1(evt);

	switch (mad_status) {
	case IBMVFC_MAD_SUCCESS:
		if (FUNC4(&vhost->sent) &&
		    vhost->action == IBMVFC_HOST_ACTION_LOGO_WAIT) {
			FUNC3(vhost);
			return;
		}
		break;
	case IBMVFC_MAD_FAILED:
	case IBMVFC_MAD_NOT_SUPPORTED:
	case IBMVFC_MAD_CRQ_ERROR:
	case IBMVFC_MAD_DRIVER_FAILED:
	default:
		FUNC0(vhost, "NPIV Logout failed. 0x%X\n", mad_status);
		break;
	}

	FUNC2(vhost);
}