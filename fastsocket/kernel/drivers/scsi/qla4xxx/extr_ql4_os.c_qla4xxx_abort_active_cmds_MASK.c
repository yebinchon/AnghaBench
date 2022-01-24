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
struct srb {int /*<<< orphan*/  srb_ref; TYPE_1__* cmd; } ;
struct scsi_qla_host {int /*<<< orphan*/  hardware_lock; TYPE_2__* host; } ;
struct TYPE_4__ {int can_queue; } ;
struct TYPE_3__ {int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct srb* FUNC1 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  qla4xxx_srb_compl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct scsi_qla_host *ha, int res)
{
	struct srb *srb;
	int i;
	unsigned long flags;

	FUNC2(&ha->hardware_lock, flags);
	for (i = 0; i < ha->host->can_queue; i++) {
		srb = FUNC1(ha, i);
		if (srb != NULL) {
			srb->cmd->result = res;
			FUNC0(&srb->srb_ref, qla4xxx_srb_compl);
		}
	}
	FUNC3(&ha->hardware_lock, flags);
}