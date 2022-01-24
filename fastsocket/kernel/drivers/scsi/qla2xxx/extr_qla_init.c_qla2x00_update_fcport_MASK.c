#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;
struct TYPE_13__ {int flags; scalar_t__ login_retry; TYPE_1__* vha; } ;
typedef  TYPE_2__ fc_port_t ;

/* Variables and functions */
 int FCF_ASYNC_SENT ; 
 int FCF_LOGIN_NEEDED ; 
 int /*<<< orphan*/  FCS_ONLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC5(scsi_qla_host_t *vha, fc_port_t *fcport)
{
	fcport->vha = vha;

	if (FUNC0(vha->hw)) {
		FUNC4(fcport, FCS_ONLINE);
		FUNC3(vha, fcport);
		return;
	}
	fcport->login_retry = 0;
	fcport->flags &= ~(FCF_LOGIN_NEEDED | FCF_ASYNC_SENT);

	FUNC4(fcport, FCS_ONLINE);
	FUNC2(vha, fcport);
	FUNC1(vha, fcport);
	FUNC3(vha, fcport);
}