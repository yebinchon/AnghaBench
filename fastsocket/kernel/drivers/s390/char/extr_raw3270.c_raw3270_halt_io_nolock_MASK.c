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
struct raw3270_request {int dummy; } ;
struct raw3270 {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,long) ; 
 int FUNC1 (int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC2 (struct raw3270_request*) ; 

__attribute__((used)) static int
FUNC3(struct raw3270 *rp, struct raw3270_request *rq)
{
	int retries;
	int rc;

	if (FUNC2(rq))
		return 0;
	/* Check if interrupt has already been processed */
	for (retries = 0; retries < 5; retries++) {
		if (retries < 2)
			rc = FUNC1(rp->cdev, (long) rq);
		else
			rc = FUNC0(rp->cdev, (long) rq);
		if (rc == 0)
			break;		/* termination successful */
	}
	return rc;
}