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
struct request_queue {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/  cmd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXTIMEOUT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* current_req ; 
 int /*<<< orphan*/  fdc_busy ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ max_buffer_sectors ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ usage_count ; 

__attribute__((used)) static void FUNC6(struct request_queue * q)
{
	if (max_buffer_sectors == 0) {
		FUNC3("VFS: do_fd_request called on non-open device\n");
		return;
	}

	if (usage_count == 0) {
		FUNC3("warning: usage count=0, current_req=%p exiting\n",
		       current_req);
		FUNC3("sect=%ld type=%x flags=%x\n",
		       (long)FUNC0(current_req), current_req->cmd_type,
		       current_req->cmd_flags);
		return;
	}
	if (FUNC5(0, &fdc_busy)) {
		/* fdc busy, this new request will be treated when the
		   current one is done */
		FUNC1("do fd request, old request running");
		return;
	}
	FUNC2(MAXTIMEOUT, 0);
	FUNC4();
	FUNC1("do fd request");
}