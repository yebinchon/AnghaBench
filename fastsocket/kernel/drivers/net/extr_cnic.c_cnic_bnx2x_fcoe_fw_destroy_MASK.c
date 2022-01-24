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
struct fcoe_kwqe_destroy {int dummy; } ;
struct cnic_local {int /*<<< orphan*/  fcoe_init_cid; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
typedef  int /*<<< orphan*/  l5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cnic_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FCOE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  FCOE_RAMROD_CMD_ID_DESTROY_FUNC ; 
 int /*<<< orphan*/  MAX_ISCSI_TBL_SZ ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cnic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union l5cm_specific_data*) ; 
 int /*<<< orphan*/  FUNC3 (union l5cm_specific_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cnic_dev *dev, struct kwqe *kwqe)
{
	struct fcoe_kwqe_destroy *req;
	union l5cm_specific_data l5_data;
	struct cnic_local *cp = dev->cnic_priv;
	int ret;
	u32 cid;

	FUNC1(dev, MAX_ISCSI_TBL_SZ);

	req = (struct fcoe_kwqe_destroy *) kwqe;
	cid = FUNC0(cp, cp->fcoe_init_cid);

	FUNC3(&l5_data, 0, sizeof(l5_data));
	ret = FUNC2(dev, FCOE_RAMROD_CMD_ID_DESTROY_FUNC, cid,
				  FCOE_CONNECTION_TYPE, &l5_data);
	return ret;
}