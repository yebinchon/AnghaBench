#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pg_help_data {size_t num_of_pg; TYPE_1__* data; } ;
struct dcbx_ets_feature {int dummy; } ;
struct cos_help_data {int num_of_cos; TYPE_4__* data; } ;
struct bnx2x_dcbx_cos_params {scalar_t__ strict; scalar_t__ bw_tbl; scalar_t__ pri_bitmask; int pauseable; } ;
struct TYPE_6__ {size_t num_of_cos; struct bnx2x_dcbx_cos_params* cos_params; } ;
struct TYPE_7__ {TYPE_2__ ets; } ;
struct bnx2x {TYPE_3__ dcbx_port_params; } ;
typedef  int /*<<< orphan*/  cos_data ;
struct TYPE_8__ {scalar_t__ pri_join_mask; int pausable; scalar_t__ strict; scalar_t__ cos_bw; } ;
struct TYPE_5__ {scalar_t__ pg; scalar_t__ num_of_dif_pri; int /*<<< orphan*/  pg_priority; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 scalar_t__ BNX2X_DCBX_STRICT_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 int /*<<< orphan*/  BNX2X_MSG_DCB ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 scalar_t__ DCBX_INVALID_COS_BW ; 
 scalar_t__ DCBX_MAX_NUM_PG_BW_ENTRIES ; 
 scalar_t__ FUNC5 (struct bnx2x*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct bnx2x*,scalar_t__) ; 
 scalar_t__ DCBX_STRICT_PRIORITY ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct pg_help_data*,struct dcbx_ets_feature*,struct cos_help_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,struct pg_help_data*,struct dcbx_ets_feature*,struct cos_help_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cos_help_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp,
				       struct pg_help_data *help_data,
				       struct dcbx_ets_feature *ets,
				       u32 *pg_pri_orginal_spread)
{
	struct cos_help_data         cos_data;
	u8                    i                           = 0;
	u32                   pri_join_mask               = 0;
	u8                    num_of_dif_pri              = 0;

	FUNC10(&cos_data, 0, sizeof(cos_data));

	/* Validate the pg value */
	for (i = 0; i < help_data->num_of_pg ; i++) {
		if (DCBX_STRICT_PRIORITY != help_data->data[i].pg &&
		    DCBX_MAX_NUM_PG_BW_ENTRIES <= help_data->data[i].pg)
			FUNC1("Invalid pg[%d] data %x\n", i,
				  help_data->data[i].pg);
		pri_join_mask   |=  help_data->data[i].pg_priority;
		num_of_dif_pri  += help_data->data[i].num_of_dif_pri;
	}

	/* defaults */
	cos_data.num_of_cos = 1;
	for (i = 0; i < FUNC0(cos_data.data); i++) {
		cos_data.data[i].pri_join_mask = 0;
		cos_data.data[i].pausable = false;
		cos_data.data[i].strict = BNX2X_DCBX_STRICT_INVALID;
		cos_data.data[i].cos_bw = DCBX_INVALID_COS_BW;
	}

	if (FUNC4(bp))
		FUNC9(bp, help_data, ets,
					       &cos_data, pri_join_mask);
	else /* E2 + E3A0 */
		FUNC8(bp,
							  help_data, ets,
							  &cos_data,
							  pg_pri_orginal_spread,
							  pri_join_mask,
							  num_of_dif_pri);

	for (i = 0; i < cos_data.num_of_cos ; i++) {
		struct bnx2x_dcbx_cos_params *p =
			&bp->dcbx_port_params.ets.cos_params[i];

		p->strict = cos_data.data[i].strict;
		p->bw_tbl = cos_data.data[i].cos_bw;
		p->pri_bitmask = cos_data.data[i].pri_join_mask;
		p->pauseable = cos_data.data[i].pausable;

		/* sanity */
		if (p->bw_tbl != DCBX_INVALID_COS_BW ||
		    p->strict != BNX2X_DCBX_STRICT_INVALID) {
			if (p->pri_bitmask == 0)
				FUNC1("Invalid pri_bitmask for %d\n", i);

			if (FUNC2(bp) || FUNC3(bp)) {

				if (p->pauseable &&
				    FUNC5(bp,
						p->pri_bitmask) != 0)
					FUNC1("Inconsistent config for pausable COS %d\n",
						  i);

				if (!p->pauseable &&
				    FUNC6(bp,
						p->pri_bitmask) != 0)
					FUNC1("Inconsistent config for nonpausable COS %d\n",
						  i);
			}
		}

		if (p->pauseable)
			FUNC7(BNX2X_MSG_DCB, "COS %d PAUSABLE prijoinmask 0x%x\n",
				  i, cos_data.data[i].pri_join_mask);
		else
			FUNC7(BNX2X_MSG_DCB,
			   "COS %d NONPAUSABLE prijoinmask 0x%x\n",
			   i, cos_data.data[i].pri_join_mask);
	}

	bp->dcbx_port_params.ets.num_of_cos = cos_data.num_of_cos ;
}