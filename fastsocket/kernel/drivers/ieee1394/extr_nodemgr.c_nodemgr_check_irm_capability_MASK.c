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
struct hpsb_host {int irm_id; int /*<<< orphan*/  node_id; scalar_t__ is_irm; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int CSR_BROADCAST_CHANNEL ; 
 int CSR_REGISTER_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LOCAL_BUS ; 
 int /*<<< orphan*/  LONG_RESET_FORCE_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_host*) ; 
 scalar_t__ hpsb_disable_irm ; 
 int FUNC4 (struct hpsb_host*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hpsb_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct hpsb_host *host, int cycles)
{
	quadlet_t bc;
	int status;

	if (hpsb_disable_irm || host->is_irm)
		return 1;

	status = FUNC4(host, LOCAL_BUS | (host->irm_id),
			   FUNC3(host),
			   (CSR_REGISTER_BASE | CSR_BROADCAST_CHANNEL),
			   &bc, sizeof(quadlet_t));

	if (status < 0 || !(FUNC2(bc) & 0x80000000)) {
		/* The current irm node does not have a valid BROADCAST_CHANNEL
		 * register and we do, so reset the bus with force_root set */
		FUNC0("Current remote IRM is not 1394a-2000 compliant, resetting...");

		if (cycles >= 5) {
			/* Oh screw it! Just leave the bus as it is */
			FUNC0("Stopping reset loop for IRM sanity");
			return 1;
		}

		FUNC6(host, FUNC1(host->node_id), -1);
		FUNC5(host, LONG_RESET_FORCE_ROOT);

		return 0;
	}

	return 1;
}