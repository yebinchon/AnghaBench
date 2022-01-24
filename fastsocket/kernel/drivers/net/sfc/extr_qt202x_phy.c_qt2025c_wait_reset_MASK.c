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
struct efx_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx)
{
	int rc;

	rc = FUNC3(efx);
	if (rc != 0)
		return rc;

	rc = FUNC2(efx);
	if (rc == -ETIMEDOUT) {
		/* Bug 17689: occasionally heartbeat starts but firmware status
		 * code never progresses beyond 0x00.  Try again, once, after
		 * restarting execution of the firmware image. */
		FUNC0(efx, hw, efx->net_dev,
			  "bashing QT2025C microcontroller\n");
		FUNC1(efx);
		rc = FUNC3(efx);
		if (rc != 0)
			return rc;
		rc = FUNC2(efx);
	}

	return rc;
}