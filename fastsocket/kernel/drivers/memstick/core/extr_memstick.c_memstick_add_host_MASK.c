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
struct memstick_host {int /*<<< orphan*/  (* set_param ) (struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEMSTICK_POWER ; 
 int /*<<< orphan*/  MEMSTICK_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct memstick_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct memstick_host*) ; 
 int /*<<< orphan*/  memstick_host_idr ; 
 int /*<<< orphan*/  memstick_host_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct memstick_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct memstick_host *host)
{
	int rc;

	if (!FUNC3(&memstick_host_idr, GFP_KERNEL))
		return -ENOMEM;

	FUNC6(&memstick_host_lock);
	rc = FUNC2(&memstick_host_idr, host, &host->id);
	FUNC7(&memstick_host_lock);
	if (rc)
		return rc;

	FUNC0(&host->dev, "memstick%u", host->id);

	rc = FUNC1(&host->dev);
	if (rc) {
		FUNC6(&memstick_host_lock);
		FUNC4(&memstick_host_idr, host->id);
		FUNC7(&memstick_host_lock);
		return rc;
	}

	host->set_param(host, MEMSTICK_POWER, MEMSTICK_POWER_OFF);
	FUNC5(host);
	return 0;
}