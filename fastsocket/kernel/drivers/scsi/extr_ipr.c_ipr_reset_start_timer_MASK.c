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
struct TYPE_4__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct ipr_cmnd {TYPE_2__ timer; int /*<<< orphan*/  done; TYPE_1__* hrrq; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  hrrq_pending_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ipr_reset_ioa_job ; 
 scalar_t__ ipr_reset_timer_done ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ipr_cmnd *ipr_cmd,
				  unsigned long timeout)
{

	ENTER;
	FUNC1(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);
	ipr_cmd->done = ipr_reset_ioa_job;

	ipr_cmd->timer.data = (unsigned long) ipr_cmd;
	ipr_cmd->timer.expires = jiffies + timeout;
	ipr_cmd->timer.function = (void (*)(unsigned long))ipr_reset_timer_done;
	FUNC0(&ipr_cmd->timer);
}