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
typedef  int u8 ;
struct request {int* cmd; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  REQ_DEVSET_EXEC 131 
#define  REQ_DRIVE_RESET 130 
#define  REQ_PARK_HEADS 129 
#define  REQ_UNPARK_HEADS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ide_startstop_t FUNC4(ide_drive_t *drive, struct request *rq)
{
	u8 cmd = rq->cmd[0];

	switch (cmd) {
	case REQ_PARK_HEADS:
	case REQ_UNPARK_HEADS:
		return FUNC2(drive, rq);
	case REQ_DEVSET_EXEC:
		return FUNC1(drive, rq);
	case REQ_DRIVE_RESET:
		return FUNC3(drive);
	default:
		FUNC0();
	}
}