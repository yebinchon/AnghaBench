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
struct zfcp_unit {TYPE_2__* port; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {struct zfcp_adapter* adapter; } ;
struct TYPE_3__ {struct zfcp_unit* hostdata; } ;

/* Variables and functions */
 int SUCCESS ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*) ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd *scpnt)
{
	struct zfcp_unit *unit = scpnt->device->hostdata;
	struct zfcp_adapter *adapter = unit->port->adapter;
	int ret;

	FUNC1(adapter, 0, "schrh_1", scpnt);
	FUNC2(adapter);
	ret = FUNC0(scpnt);
	if (ret)
		return ret;

	return SUCCESS;
}