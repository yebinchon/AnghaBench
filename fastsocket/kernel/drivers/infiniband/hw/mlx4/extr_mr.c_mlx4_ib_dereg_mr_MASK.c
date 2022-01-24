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
struct mlx4_ib_mr {scalar_t__ umem; int /*<<< orphan*/  mmr; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_mr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_mr* FUNC4 (struct ib_mr*) ; 

int FUNC5(struct ib_mr *ibmr)
{
	struct mlx4_ib_mr *mr = FUNC4(ibmr);
	int ret;

	ret = FUNC2(FUNC3(ibmr->device)->dev, &mr->mmr);
	if (ret)
		return ret;
	if (mr->umem)
		FUNC0(mr->umem);
	FUNC1(mr);

	return 0;
}