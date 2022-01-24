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
struct net_device {int dummy; } ;
struct cnic_ops {int dummy; } ;
struct cnic_eth_dev {int /*<<< orphan*/  iro_arr; int /*<<< orphan*/  drv_state; scalar_t__ num_irq; } ;
struct bnx2x {int cnic_enabled; int /*<<< orphan*/  cnic_ops; int /*<<< orphan*/  iro_arr; void* cnic_data; scalar_t__ cnic_kwq_pending; scalar_t__ cnic_spq_pending; scalar_t__ cnic_kwq; scalar_t__ cnic_kwq_last; scalar_t__ cnic_kwq_prod; scalar_t__ cnic_kwq_cons; struct cnic_eth_dev cnic_eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CNIC_DRV_STATE_REGD ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_SP_DESC_CNT ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cnic_ops*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct cnic_ops *ops,
			       void *data)
{
	struct bnx2x *bp = FUNC7(dev);
	struct cnic_eth_dev *cp = &bp->cnic_eth_dev;
	int rc;

	FUNC3(NETIF_MSG_IFUP, "Register_cnic called\n");

	if (ops == NULL) {
		FUNC0("NULL ops received\n");
		return -EINVAL;
	}

	if (!FUNC2(bp)) {
		FUNC0("Can't register CNIC when not supported\n");
		return -EOPNOTSUPP;
	}

	if (!FUNC1(bp)) {
		rc = FUNC4(bp);
		if (rc) {
			FUNC0("CNIC-related load failed\n");
			return rc;
		}
	}

	bp->cnic_enabled = true;

	bp->cnic_kwq = FUNC6(PAGE_SIZE, GFP_KERNEL);
	if (!bp->cnic_kwq)
		return -ENOMEM;

	bp->cnic_kwq_cons = bp->cnic_kwq;
	bp->cnic_kwq_prod = bp->cnic_kwq;
	bp->cnic_kwq_last = bp->cnic_kwq + MAX_SP_DESC_CNT;

	bp->cnic_spq_pending = 0;
	bp->cnic_kwq_pending = 0;

	bp->cnic_data = data;

	cp->num_irq = 0;
	cp->drv_state |= CNIC_DRV_STATE_REGD;
	cp->iro_arr = bp->iro_arr;

	FUNC5(bp);

	FUNC8(bp->cnic_ops, ops);

	return 0;
}