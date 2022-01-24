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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct kwqe {int dummy; } ;
struct cnic_local {scalar_t__ kwq_prod_idx; int /*<<< orphan*/  cnic_ulp_lock; int /*<<< orphan*/  kwq_io_addr; struct kwqe** kwq; int /*<<< orphan*/  cnic_local_flags; } ;
struct cnic_dev {int /*<<< orphan*/  flags; struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int /*<<< orphan*/  CNIC_LCL_FL_KWQ_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EAGAIN ; 
 size_t FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ MAX_KWQ_IDX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cnic_local*) ; 
 int /*<<< orphan*/  FUNC5 (struct kwqe*,struct kwqe*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cnic_dev *dev, struct kwqe *wqes[],
				  u32 num_wqes)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct kwqe *prod_qe;
	u16 prod, sw_prod, i;

	if (!FUNC8(CNIC_F_CNIC_UP, &dev->flags))
		return -EAGAIN;		/* bnx2 is down */

	FUNC6(&cp->cnic_ulp_lock);
	if (num_wqes > FUNC4(cp) &&
	    !FUNC8(CNIC_LCL_FL_KWQ_INIT, &cp->cnic_local_flags)) {
		FUNC7(&cp->cnic_ulp_lock);
		return -EAGAIN;
	}

	FUNC3(CNIC_LCL_FL_KWQ_INIT, &cp->cnic_local_flags);

	prod = cp->kwq_prod_idx;
	sw_prod = prod & MAX_KWQ_IDX;
	for (i = 0; i < num_wqes; i++) {
		prod_qe = &cp->kwq[FUNC2(sw_prod)][FUNC1(sw_prod)];
		FUNC5(prod_qe, wqes[i], sizeof(struct kwqe));
		prod++;
		sw_prod = prod & MAX_KWQ_IDX;
	}
	cp->kwq_prod_idx = prod;

	FUNC0(dev, cp->kwq_io_addr, cp->kwq_prod_idx);

	FUNC7(&cp->cnic_ulp_lock);
	return 0;
}