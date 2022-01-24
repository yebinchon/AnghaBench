#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct srp_target_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_reqs; int /*<<< orphan*/  req_lim; } ;
struct srp_request {int /*<<< orphan*/  list; } ;
struct scsi_cmnd {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,struct srp_target_port*,struct srp_request*) ; 

__attribute__((used)) static void FUNC4(struct srp_target_port *target,
			 struct srp_request *req, struct scsi_cmnd *scmnd,
			 s32 req_lim_delta)
{
	unsigned long flags;

	FUNC3(scmnd, target, req);

	FUNC1(&target->lock, flags);
	target->req_lim += req_lim_delta;
	FUNC0(&req->list, &target->free_reqs);
	FUNC2(&target->lock, flags);
}