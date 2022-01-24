#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ fr_mr; int /*<<< orphan*/  lkey; struct ocrdma_dev* dev; } ;
struct ocrdma_mr {scalar_t__ umem; TYPE_1__ hwmr; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 struct ocrdma_mr* FUNC0 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_mr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*,TYPE_1__*) ; 
 int FUNC4 (struct ocrdma_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC5(struct ib_mr *ib_mr)
{
	struct ocrdma_mr *mr = FUNC0(ib_mr);
	struct ocrdma_dev *dev = mr->hwmr.dev;
	int status;

	status = FUNC4(dev, mr->hwmr.fr_mr, mr->hwmr.lkey);

	if (mr->hwmr.fr_mr == 0)
		FUNC3(dev, &mr->hwmr);

	/* it could be user registered memory. */
	if (mr->umem)
		FUNC1(mr->umem);
	FUNC2(mr);
	return status;
}