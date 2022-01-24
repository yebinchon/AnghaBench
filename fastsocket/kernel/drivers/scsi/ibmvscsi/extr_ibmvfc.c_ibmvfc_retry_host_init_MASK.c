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
struct ibmvfc_host {scalar_t__ action; int delay_init; scalar_t__ init_retries; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_INIT ; 
 scalar_t__ IBMVFC_HOST_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_HOST_OFFLINE ; 
 scalar_t__ IBMVFC_MAX_HOST_INIT_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ibmvfc_host *vhost)
{
	int retry = 0;

	if (vhost->action == IBMVFC_HOST_ACTION_INIT_WAIT) {
		vhost->delay_init = 1;
		if (++vhost->init_retries > IBMVFC_MAX_HOST_INIT_RETRIES) {
			FUNC1(vhost->dev,
				"Host initialization retries exceeded. Taking adapter offline\n");
			FUNC2(vhost, IBMVFC_HOST_OFFLINE);
		} else if (vhost->init_retries == IBMVFC_MAX_HOST_INIT_RETRIES)
			FUNC0(vhost);
		else {
			FUNC3(vhost, IBMVFC_HOST_ACTION_INIT);
			retry = 1;
		}
	}

	FUNC4(&vhost->work_wait_q);
	return retry;
}