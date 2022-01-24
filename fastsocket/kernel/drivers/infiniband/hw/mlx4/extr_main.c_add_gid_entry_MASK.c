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
typedef  union ib_gid {int dummy; } ib_gid ;
struct mlx4_ib_qp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  gid_list; int /*<<< orphan*/  port; } ;
struct mlx4_ib_gid_entry {int added; int /*<<< orphan*/  list; int /*<<< orphan*/  port; union ib_gid gid; } ;
struct mlx4_ib_dev {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx4_ib_gid_entry* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlx4_ib_dev*,struct mlx4_ib_qp*,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_qp* FUNC6 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC7(struct ib_qp *ibqp, union ib_gid *gid)
{
	struct mlx4_ib_qp *mqp = FUNC6(ibqp);
	struct mlx4_ib_dev *mdev = FUNC5(ibqp->device);
	struct mlx4_ib_gid_entry *ge;

	ge = FUNC0(sizeof *ge, GFP_KERNEL);
	if (!ge)
		return -ENOMEM;

	ge->gid = *gid;
	if (FUNC2(mdev, mqp, gid)) {
		ge->port = mqp->port;
		ge->added = 1;
	}

	FUNC3(&mqp->mutex);
	FUNC1(&ge->list, &mqp->gid_list);
	FUNC4(&mqp->mutex);

	return 0;
}