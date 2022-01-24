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
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct link_params const*,struct link_vars const*) ; 
 int /*<<< orphan*/  FUNC3 (struct link_params const*) ; 

__attribute__((used)) static int FUNC4(const struct link_params *params,
				   const struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;

	if (!FUNC0(bp)) {
		FUNC1(NETIF_MSG_LINK,
		   "bnx2x_ets_e3b0_disabled the chip isn't E3B0\n");
		return -EINVAL;
	}

	FUNC2(params, vars);

	FUNC3(params);

	return 0;
}