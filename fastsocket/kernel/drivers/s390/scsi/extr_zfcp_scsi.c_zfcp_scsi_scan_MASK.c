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
struct zfcp_unit {int /*<<< orphan*/  fcp_lun; TYPE_1__* port; } ;
struct scsi_lun {int dummy; } ;
struct fc_rport {scalar_t__ port_state; int /*<<< orphan*/  scsi_target_id; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct fc_rport* rport; } ;

/* Variables and functions */
 scalar_t__ FC_PORTSTATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_lun*) ; 

void FUNC2(struct zfcp_unit *unit)
{
	struct fc_rport *rport = unit->port->rport;

	if (rport && rport->port_state == FC_PORTSTATE_ONLINE)
		FUNC0(&rport->dev, 0, rport->scsi_target_id,
				 FUNC1((struct scsi_lun *)
						&unit->fcp_lun), 0);
}