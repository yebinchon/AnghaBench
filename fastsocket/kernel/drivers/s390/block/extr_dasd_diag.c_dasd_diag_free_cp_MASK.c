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
struct request {int dummy; } ;
struct dasd_ccw_req {int /*<<< orphan*/  memdev; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct dasd_ccw_req *cqr, struct request *req)
{
	int status;

	status = cqr->status == DASD_CQR_DONE;
	FUNC0(cqr, cqr->memdev);
	return status;
}