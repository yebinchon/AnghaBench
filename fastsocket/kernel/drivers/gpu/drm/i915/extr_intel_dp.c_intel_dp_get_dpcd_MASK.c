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
struct intel_dp {int* dpcd; int* downstream_ports; } ;
typedef  int /*<<< orphan*/  dpcd_hex_dump ;

/* Variables and functions */
 size_t DP_DOWNSTREAMPORT_PRESENT ; 
 int DP_DOWNSTREAM_PORT_0 ; 
 size_t DP_DPCD_REV ; 
 int DP_DWN_STRM_PORT_PRESENT ; 
 int DP_MAX_DOWNSTREAM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int,char*,int,int) ; 
 scalar_t__ FUNC2 (struct intel_dp*,int,int*,int) ; 

__attribute__((used)) static bool
FUNC3(struct intel_dp *intel_dp)
{
	char dpcd_hex_dump[sizeof(intel_dp->dpcd) * 3];

	if (FUNC2(intel_dp, 0x000, intel_dp->dpcd,
					   sizeof(intel_dp->dpcd)) == 0)
		return false; /* aux transfer failed */

	FUNC1(intel_dp->dpcd, sizeof(intel_dp->dpcd),
			   32, 1, dpcd_hex_dump, sizeof(dpcd_hex_dump), false);
	FUNC0("DPCD: %s\n", dpcd_hex_dump);

	if (intel_dp->dpcd[DP_DPCD_REV] == 0)
		return false; /* DPCD not present */

	if (!(intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] &
	      DP_DWN_STRM_PORT_PRESENT))
		return true; /* native DP sink */

	if (intel_dp->dpcd[DP_DPCD_REV] == 0x10)
		return true; /* no per-port downstream info */

	if (FUNC2(intel_dp, DP_DOWNSTREAM_PORT_0,
					   intel_dp->downstream_ports,
					   DP_MAX_DOWNSTREAM_PORTS) == 0)
		return false; /* downstream port status fetch failed */

	return true;
}