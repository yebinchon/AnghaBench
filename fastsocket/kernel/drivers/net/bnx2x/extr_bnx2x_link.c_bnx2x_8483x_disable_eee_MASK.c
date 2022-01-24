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
typedef  int /*<<< orphan*/  u16 ;
struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  PHY84833_CMD_SET_EEE_MODE ; 
 int FUNC1 (struct bnx2x_phy*,struct link_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 

__attribute__((used)) static int FUNC3(struct bnx2x_phy *phy,
				   struct link_params *params,
				   struct link_vars *vars)
{
	int rc;
	struct bnx2x *bp = params->bp;
	u16 cmd_args = 0;

	FUNC0(NETIF_MSG_LINK, "Don't Advertise 10GBase-T EEE\n");

	/* Prevent Phy from working in EEE and advertising it */
	rc = FUNC1(phy, params,
		PHY84833_CMD_SET_EEE_MODE, &cmd_args, 1);
	if (rc) {
		FUNC0(NETIF_MSG_LINK, "EEE disable failed.\n");
		return rc;
	}

	return FUNC2(phy, params, vars);
}