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
struct dasd_ccw_req {TYPE_1__* startdev; int /*<<< orphan*/  callback_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_SLEEPON_END_TAG ; 
 int /*<<< orphan*/  generic_waitq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dasd_ccw_req *cqr, void *data)
{
	FUNC1(FUNC0(cqr->startdev->cdev));
	cqr->callback_data = DASD_SLEEPON_END_TAG;
	FUNC2(FUNC0(cqr->startdev->cdev));
	FUNC3(&generic_waitq);
}