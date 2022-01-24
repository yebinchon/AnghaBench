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
typedef  int /*<<< orphan*/  u8 ;
struct radeon_connector_atom_dig {int /*<<< orphan*/  dp_lane_count; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;

/* Variables and functions */
 int DP_LINK_STATUS_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_connector*,int /*<<< orphan*/ *) ; 

bool FUNC2(struct radeon_connector *radeon_connector)
{
	u8 link_status[DP_LINK_STATUS_SIZE];
	struct radeon_connector_atom_dig *dig = radeon_connector->con_priv;

	if (!FUNC1(radeon_connector, link_status))
		return false;
	if (FUNC0(link_status, dig->dp_lane_count))
		return false;
	return true;
}