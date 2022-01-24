#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ocrdma_pd {TYPE_2__* uctx; int /*<<< orphan*/  id; struct ocrdma_dev* dev; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_ah {int dummy; } ;
struct ocrdma_ah {struct ib_ah ibah; int /*<<< orphan*/  id; struct ocrdma_dev* dev; } ;
struct ib_pd {int dummy; } ;
struct ib_ah_attr {int ah_flags; int dlid; } ;
struct TYPE_3__ {int /*<<< orphan*/ * va; } ;
struct TYPE_4__ {TYPE_1__ ah_tbl; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_ah* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IB_AH_GRH ; 
 struct ocrdma_pd* FUNC1 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_ah*) ; 
 struct ocrdma_ah* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ocrdma_dev*,struct ocrdma_ah*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_dev*,struct ocrdma_ah*) ; 
 int FUNC6 (struct ocrdma_ah*,struct ib_ah_attr*,int /*<<< orphan*/ ) ; 

struct ib_ah *FUNC7(struct ib_pd *ibpd, struct ib_ah_attr *attr)
{
	u32 *ahid_addr;
	int status;
	struct ocrdma_ah *ah;
	struct ocrdma_pd *pd = FUNC1(ibpd);
	struct ocrdma_dev *dev = pd->dev;

	if (!(attr->ah_flags & IB_AH_GRH))
		return FUNC0(-EINVAL);

	ah = FUNC3(sizeof *ah, GFP_ATOMIC);
	if (!ah)
		return FUNC0(-ENOMEM);
	ah->dev = pd->dev;

	status = FUNC4(dev, ah);
	if (status)
		goto av_err;
	status = FUNC6(ah, attr, pd->id);
	if (status)
		goto av_conf_err;

	/* if pd is for the user process, pass the ah_id to user space */
	if ((pd->uctx) && (pd->uctx->ah_tbl.va)) {
		ahid_addr = pd->uctx->ah_tbl.va + attr->dlid;
		*ahid_addr = ah->id;
	}
	return &ah->ibah;

av_conf_err:
	FUNC5(dev, ah);
av_err:
	FUNC2(ah);
	return FUNC0(status);
}