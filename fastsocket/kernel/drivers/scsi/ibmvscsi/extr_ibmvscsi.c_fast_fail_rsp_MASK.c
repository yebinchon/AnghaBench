#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct srp_event_struct {TYPE_4__* xfer_iu; struct ibmvscsi_host_data* hostdata; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct TYPE_7__ {TYPE_2__ fast_fail; } ;
struct TYPE_8__ {TYPE_3__ mad; } ;

/* Variables and functions */
 scalar_t__ VIOSRP_MAD_FAILED ; 
 scalar_t__ VIOSRP_MAD_NOT_SUPPORTED ; 
 scalar_t__ VIOSRP_MAD_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvscsi_host_data*) ; 

__attribute__((used)) static void FUNC2(struct srp_event_struct *evt_struct)
{
	struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;
	u8 status = evt_struct->xfer_iu->mad.fast_fail.common.status;

	if (status == VIOSRP_MAD_NOT_SUPPORTED)
		FUNC0(hostdata->dev, "fast_fail not supported in server\n");
	else if (status == VIOSRP_MAD_FAILED)
		FUNC0(hostdata->dev, "fast_fail request failed\n");
	else if (status != VIOSRP_MAD_SUCCESS)
		FUNC0(hostdata->dev, "error 0x%X enabling fast_fail\n", status);

	FUNC1(hostdata);
}