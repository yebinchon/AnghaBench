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
struct hpsb_host {int /*<<< orphan*/  node_id; int /*<<< orphan*/  selfid_count; int /*<<< orphan*/ * topology_map; scalar_t__ in_bus_reset; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct hpsb_host *host, quadlet_t sid)
{
	if (host->in_bus_reset) {
		FUNC1("Including SelfID 0x%x", sid);
		host->topology_map[host->selfid_count++] = sid;
	} else {
		FUNC0("Spurious SelfID packet (0x%08x) received from bus %d",
			    sid, FUNC2(host->node_id));
	}
}