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
struct radeon_connector_atom_dig {scalar_t__* dpcd; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int DP_DPCD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct radeon_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_connector*) ; 

bool FUNC4(struct radeon_connector *radeon_connector)
{
	struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
	u8 msg[DP_DPCD_SIZE];
	int ret, i;

	ret = FUNC2(radeon_connector, DP_DPCD_REV, msg,
					DP_DPCD_SIZE, 0);
	if (ret > 0) {
		FUNC1(dig_connector->dpcd, msg, DP_DPCD_SIZE);
		FUNC0("DPCD: ");
		for (i = 0; i < DP_DPCD_SIZE; i++)
			FUNC0("%02x ", msg[i]);
		FUNC0("\n");

		FUNC3(radeon_connector);

		return true;
	}
	dig_connector->dpcd[0] = 0;
	return false;
}