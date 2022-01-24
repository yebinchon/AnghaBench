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
struct ib_mr {int dummy; } ;
struct mthca_mr {struct ib_mr ibmr; int /*<<< orphan*/ * umem; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  pd_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_mr*) ; 
 struct mthca_mr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mthca_mr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_mr *FUNC7(struct ib_pd *pd, int acc)
{
	struct mthca_mr *mr;
	int err;

	mr = FUNC3(sizeof *mr, GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	err = FUNC4(FUNC5(pd->device),
				     FUNC6(pd)->pd_num,
				     FUNC1(acc), mr);

	if (err) {
		FUNC2(mr);
		return FUNC0(err);
	}

	mr->umem = NULL;

	return &mr->ibmr;
}