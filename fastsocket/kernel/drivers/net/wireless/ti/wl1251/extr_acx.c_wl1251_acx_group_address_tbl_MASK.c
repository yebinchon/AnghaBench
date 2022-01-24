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
struct wl1251 {int dummy; } ;
struct acx_dot11_grp_addr_tbl {int /*<<< orphan*/  mac_table; scalar_t__ num_groups; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_GROUP_MAX_LEN ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_GROUP_ADDRESS_TBL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_dot11_grp_addr_tbl*) ; 
 struct acx_dot11_grp_addr_tbl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,struct acx_dot11_grp_addr_tbl*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1251 *wl)
{
	struct acx_dot11_grp_addr_tbl *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx group address tbl");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	/* MAC filtering */
	acx->enabled = 0;
	acx->num_groups = 0;
	FUNC2(acx->mac_table, 0, ADDRESS_GROUP_MAX_LEN);

	ret = FUNC3(wl, DOT11_GROUP_ADDRESS_TBL,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("failed to set group addr table: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}