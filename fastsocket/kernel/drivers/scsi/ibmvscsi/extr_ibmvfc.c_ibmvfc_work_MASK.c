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
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_host*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *data)
{
	struct ibmvfc_host *vhost = data;
	int rc;

	FUNC5(current, -20);

	while (1) {
		rc = FUNC6(vhost->work_wait_q,
					      FUNC3(vhost));

		FUNC0(rc);

		if (FUNC4())
			break;

		FUNC2(vhost);
	}

	FUNC1(vhost, "ibmvfc kthread exiting...\n");
	return 0;
}