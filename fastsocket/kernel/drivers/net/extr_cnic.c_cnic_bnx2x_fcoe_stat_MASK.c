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
typedef  union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef  int /*<<< orphan*/  u32 ;
struct kwqe {int dummy; } ;
struct fcoe_stat_ramrod_params {int /*<<< orphan*/  stat_kwqe; } ;
struct fcoe_kwqe_stat {int dummy; } ;
struct cnic_local {int /*<<< orphan*/  fcoe_init_cid; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FCOE_L5_CID_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_local*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FCOE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  FCOE_RAMROD_CMD_ID_STAT_FUNC ; 
 struct fcoe_stat_ramrod_params* FUNC1 (struct cnic_local*,int /*<<< orphan*/ ,union l5cm_specific_data*) ; 
 int FUNC2 (struct cnic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union l5cm_specific_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fcoe_kwqe_stat*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fcoe_stat_ramrod_params*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct cnic_dev *dev, struct kwqe *kwqe)
{
	struct fcoe_kwqe_stat *req;
	struct fcoe_stat_ramrod_params *fcoe_stat;
	union l5cm_specific_data l5_data;
	struct cnic_local *cp = dev->cnic_priv;
	int ret;
	u32 cid;

	req = (struct fcoe_kwqe_stat *) kwqe;
	cid = FUNC0(cp, cp->fcoe_init_cid);

	fcoe_stat = FUNC1(cp, BNX2X_FCOE_L5_CID_BASE, &l5_data);
	if (!fcoe_stat)
		return -ENOMEM;

	FUNC4(fcoe_stat, 0, sizeof(*fcoe_stat));
	FUNC3(&fcoe_stat->stat_kwqe, req, sizeof(*req));

	ret = FUNC2(dev, FCOE_RAMROD_CMD_ID_STAT_FUNC, cid,
				  FCOE_CONNECTION_TYPE, &l5_data);
	return ret;
}