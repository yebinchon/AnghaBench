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
struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static void FUNC3(struct link_params *params,
			       struct link_vars *vars,
			       struct bnx2x_phy *phy)
{
	struct bnx2x *bp = params->bp;
	FUNC0(NETIF_MSG_LINK, "KR2 recovery\n");
	FUNC1(phy, params, vars);
	FUNC2(phy, params);
}