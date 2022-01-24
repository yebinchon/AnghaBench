#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int cmd_len; int errors; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  cmd_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_DRIVE_RESET ; 
 int /*<<< orphan*/  REQ_TYPE_SPECIAL ; 
 int /*<<< orphan*/  __GFP_WAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive)
{
	struct request *rq;
	int ret = 0;

	rq = FUNC1(drive->queue, READ, __GFP_WAIT);
	rq->cmd_type = REQ_TYPE_SPECIAL;
	rq->cmd_len = 1;
	rq->cmd[0] = REQ_DRIVE_RESET;
	if (FUNC0(drive->queue, NULL, rq, 1))
		ret = rq->errors;
	FUNC2(rq);
	return ret;
}