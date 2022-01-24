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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC4 (struct link_params*) ; 
 int FUNC5 (struct link_params*,struct link_vars*) ; 

int FUNC6(struct link_params *params,
		      struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	int bnx2x_status = 0;

	if ((FUNC0(bp)) || (FUNC1(bp)))
		FUNC4(params);
	else if (FUNC2(bp))
		bnx2x_status = FUNC5(params, vars);
	else {
		FUNC3(NETIF_MSG_LINK, "bnx2x_ets_disabled - chip not supported\n");
		return -EINVAL;
	}

	return bnx2x_status;
}