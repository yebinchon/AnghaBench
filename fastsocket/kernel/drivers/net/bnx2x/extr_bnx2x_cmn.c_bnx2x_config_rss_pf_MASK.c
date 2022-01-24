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
struct bnx2x_rss_config_obj {int /*<<< orphan*/  ind_table; scalar_t__ udp_rss_v6; scalar_t__ udp_rss_v4; } ;
struct bnx2x_config_rss_params {int /*<<< orphan*/  rss_flags; int /*<<< orphan*/  rss_key; int /*<<< orphan*/  ind_table; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/  ramrod_flags; struct bnx2x_rss_config_obj* rss_obj; int /*<<< orphan*/ * member_0; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_RSS_IPV4 ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV4_TCP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV4_UDP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV6 ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV6_TCP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV6_UDP ; 
 int /*<<< orphan*/  BNX2X_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  BNX2X_RSS_SET_SRCH ; 
 int /*<<< orphan*/  MULTI_MASK ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_config_rss_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct bnx2x *bp, struct bnx2x_rss_config_obj *rss_obj,
			bool config_hash)
{
	struct bnx2x_config_rss_params params = {NULL};

	/* Although RSS is meaningless when there is a single HW queue we
	 * still need it enabled in order to have HW Rx hash generated.
	 *
	 * if (!is_eth_multi(bp))
	 *      bp->multi_mode = ETH_RSS_MODE_DISABLED;
	 */

	params.rss_obj = rss_obj;

	FUNC0(RAMROD_COMP_WAIT, &params.ramrod_flags);

	FUNC0(BNX2X_RSS_MODE_REGULAR, &params.rss_flags);

	/* RSS configuration */
	FUNC0(BNX2X_RSS_IPV4, &params.rss_flags);
	FUNC0(BNX2X_RSS_IPV4_TCP, &params.rss_flags);
	FUNC0(BNX2X_RSS_IPV6, &params.rss_flags);
	FUNC0(BNX2X_RSS_IPV6_TCP, &params.rss_flags);
	if (rss_obj->udp_rss_v4)
		FUNC0(BNX2X_RSS_IPV4_UDP, &params.rss_flags);
	if (rss_obj->udp_rss_v6)
		FUNC0(BNX2X_RSS_IPV6_UDP, &params.rss_flags);

	/* Hash bits */
	params.rss_result_mask = MULTI_MASK;

	FUNC2(params.ind_table, rss_obj->ind_table, sizeof(params.ind_table));

	if (config_hash) {
		/* RSS keys */
		FUNC3(params.rss_key, sizeof(params.rss_key));
		FUNC0(BNX2X_RSS_SET_SRCH, &params.rss_flags);
	}

	return FUNC1(bp, &params);
}