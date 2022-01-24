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
struct radeon_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_LANE0_1_STATUS ; 
 int /*<<< orphan*/  DP_LINK_STATUS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct radeon_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC2(struct radeon_connector *radeon_connector,
				      u8 link_status[DP_LINK_STATUS_SIZE])
{
	int ret;
	ret = FUNC1(radeon_connector, DP_LANE0_1_STATUS,
					link_status, DP_LINK_STATUS_SIZE, 100);
	if (ret <= 0) {
		return false;
	}

	FUNC0("link status %*ph\n", 6, link_status);
	return true;
}