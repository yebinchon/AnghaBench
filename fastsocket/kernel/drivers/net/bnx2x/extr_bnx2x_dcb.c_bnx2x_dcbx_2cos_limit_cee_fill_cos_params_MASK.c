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
typedef  int /*<<< orphan*/  u32 ;
struct pg_help_data {int num_of_pg; } ;
struct dcbx_ets_feature {int dummy; } ;
struct cos_help_data {int /*<<< orphan*/  num_of_cos; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DCBX_COS_MAX_NUM_E2 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct pg_help_data*,struct cos_help_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct pg_help_data*,struct dcbx_ets_feature*,struct cos_help_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct pg_help_data*,struct dcbx_ets_feature*,struct cos_help_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct cos_help_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp,
				       struct pg_help_data *help_data,
				       struct dcbx_ets_feature *ets,
				       struct cos_help_data *cos_data,
				       u32 *pg_pri_orginal_spread,
				       u32 pri_join_mask,
				       u8 num_of_dif_pri)
{
	/* default E2 settings */
	cos_data->num_of_cos = DCBX_COS_MAX_NUM_E2;

	switch (help_data->num_of_pg) {
	case 1:
		FUNC1(
					       bp,
					       help_data,
					       cos_data,
					       pri_join_mask,
					       num_of_dif_pri);
		break;
	case 2:
		FUNC3(
					    bp,
					    help_data,
					    ets,
					    cos_data,
					    pg_pri_orginal_spread,
					    pri_join_mask,
					    num_of_dif_pri);
		break;

	case 3:
		FUNC2(
					      bp,
					      help_data,
					      ets,
					      cos_data,
					      pg_pri_orginal_spread,
					      pri_join_mask,
					      num_of_dif_pri);
		break;
	default:
		FUNC0("Wrong pg_help_data.num_of_pg\n");
		FUNC4(bp,
						   cos_data, pri_join_mask);
	}
}