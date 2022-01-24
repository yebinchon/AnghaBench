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
struct eth_rss_update_ramrod_data {int /*<<< orphan*/  capabilities; int /*<<< orphan*/ * rss_key; int /*<<< orphan*/ * indirection_table; int /*<<< orphan*/  rss_engine_id; int /*<<< orphan*/  rss_result_mask; int /*<<< orphan*/  rss_mode; int /*<<< orphan*/  echo; } ;
struct bnx2x_raw_obj {int cid; int state; int /*<<< orphan*/  rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x_rss_config_obj {int /*<<< orphan*/ * ind_table; int /*<<< orphan*/  engine_id; struct bnx2x_raw_obj raw; } ;
struct bnx2x_config_rss_params {int /*<<< orphan*/ * rss_key; int /*<<< orphan*/  rss_flags; int /*<<< orphan*/ * ind_table; int /*<<< orphan*/  rss_result_mask; struct bnx2x_rss_config_obj* rss_obj; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV4 ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV4_TCP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV4_UDP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV6 ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV6_TCP ; 
 int /*<<< orphan*/  BNX2X_RSS_IPV6_UDP ; 
 int /*<<< orphan*/  BNX2X_RSS_MODE_DISABLED ; 
 int /*<<< orphan*/  BNX2X_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  BNX2X_RSS_SET_SRCH ; 
 int BNX2X_SWCID_MASK ; 
 int BNX2X_SWCID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ETH_CONNECTION_TYPE ; 
 int /*<<< orphan*/  ETH_RSS_MODE_DISABLED ; 
 int /*<<< orphan*/  ETH_RSS_MODE_REGULAR ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY ; 
 int /*<<< orphan*/  ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_ETH_RSS_UPDATE ; 
 int T_ETH_INDIRECTION_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_config_rss_params*) ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct eth_rss_update_ramrod_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct bnx2x*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct bnx2x *bp,
			   struct bnx2x_config_rss_params *p)
{
	struct bnx2x_rss_config_obj *o = p->rss_obj;
	struct bnx2x_raw_obj *r = &o->raw;
	struct eth_rss_update_ramrod_data *data =
		(struct eth_rss_update_ramrod_data *)(r->rdata);
	u8 rss_mode = 0;
	int rc;

	FUNC7(data, 0, sizeof(*data));

	FUNC0(BNX2X_MSG_SP, "Configuring RSS\n");

	/* Set an echo field */
	data->echo = FUNC5((r->cid & BNX2X_SWCID_MASK) |
				 (r->state << BNX2X_SWCID_SHIFT));

	/* RSS mode */
	if (FUNC9(BNX2X_RSS_MODE_DISABLED, &p->rss_flags))
		rss_mode = ETH_RSS_MODE_DISABLED;
	else if (FUNC9(BNX2X_RSS_MODE_REGULAR, &p->rss_flags))
		rss_mode = ETH_RSS_MODE_REGULAR;

	data->rss_mode = rss_mode;

	FUNC0(BNX2X_MSG_SP, "rss_mode=%d\n", rss_mode);

	/* RSS capabilities */
	if (FUNC9(BNX2X_RSS_IPV4, &p->rss_flags))
		data->capabilities |=
			ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY;

	if (FUNC9(BNX2X_RSS_IPV4_TCP, &p->rss_flags))
		data->capabilities |=
			ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY;

	if (FUNC9(BNX2X_RSS_IPV4_UDP, &p->rss_flags))
		data->capabilities |=
			ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY;

	if (FUNC9(BNX2X_RSS_IPV6, &p->rss_flags))
		data->capabilities |=
			ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY;

	if (FUNC9(BNX2X_RSS_IPV6_TCP, &p->rss_flags))
		data->capabilities |=
			ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY;

	if (FUNC9(BNX2X_RSS_IPV6_UDP, &p->rss_flags))
		data->capabilities |=
			ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY;

	/* Hashing mask */
	data->rss_result_mask = p->rss_result_mask;

	/* RSS engine ID */
	data->rss_engine_id = o->engine_id;

	FUNC0(BNX2X_MSG_SP, "rss_engine_id=%d\n", data->rss_engine_id);

	/* Indirection table */
	FUNC6(data->indirection_table, p->ind_table,
		  T_ETH_INDIRECTION_TABLE_SIZE);

	/* Remember the last configuration */
	FUNC6(o->ind_table, p->ind_table, T_ETH_INDIRECTION_TABLE_SIZE);

	/* Print the indirection table */
	if (FUNC8(bp))
		FUNC3(bp, p);

	/* RSS keys */
	if (FUNC9(BNX2X_RSS_SET_SRCH, &p->rss_flags)) {
		FUNC6(&data->rss_key[0], &p->rss_key[0],
		       sizeof(data->rss_key));
		data->capabilities |= ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY;
	}

	/* No need for an explicit memory barrier here as long we would
	 * need to ensure the ordering of writing to the SPQ element
	 * and updating of the SPQ producer which involves a memory
	 * read and we will have to put a full memory barrier there
	 * (inside bnx2x_sp_post()).
	 */

	/* Send a ramrod */
	rc = FUNC4(bp, RAMROD_CMD_ID_ETH_RSS_UPDATE, r->cid,
			   FUNC1(r->rdata_mapping),
			   FUNC2(r->rdata_mapping),
			   ETH_CONNECTION_TYPE);

	if (rc < 0)
		return rc;

	return 1;
}