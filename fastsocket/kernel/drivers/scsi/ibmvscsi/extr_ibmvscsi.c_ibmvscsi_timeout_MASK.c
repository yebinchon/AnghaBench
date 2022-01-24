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
struct TYPE_4__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {TYPE_2__ srp; } ;
struct srp_event_struct {TYPE_3__ iu; struct ibmvscsi_host_data* hostdata; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvscsi_host_data*) ; 

__attribute__((used)) static void FUNC2(struct srp_event_struct *evt_struct)
{
	struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;

	FUNC0(hostdata->dev, "Command timed out (%x). Resetting connection\n",
		evt_struct->iu.srp.cmd.opcode);

	FUNC1(hostdata);
}