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
struct request {int (* special ) (int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  errors; int /*<<< orphan*/ * cmd; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_stopped ; 

ide_startstop_t FUNC2(ide_drive_t *drive, struct request *rq)
{
	int err, (*setfunc)(ide_drive_t *, int) = rq->special;

	err = setfunc(drive, *(int *)&rq->cmd[1]);
	if (err)
		rq->errors = err;
	FUNC1(drive, err, FUNC0(rq));
	return ide_stopped;
}