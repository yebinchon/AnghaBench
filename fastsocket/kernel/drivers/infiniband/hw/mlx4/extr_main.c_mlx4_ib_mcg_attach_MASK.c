#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  raw; } ;
struct mlx4_ib_steering {int /*<<< orphan*/  list; int /*<<< orphan*/  reg_id; TYPE_2__ gid; } ;
struct mlx4_ib_qp {int flags; int /*<<< orphan*/  mqp; int /*<<< orphan*/  mutex; int /*<<< orphan*/  steering_rules; int /*<<< orphan*/  port; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {scalar_t__ steering_mode; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK ; 
 int /*<<< orphan*/  MLX4_PROT_IB_IPV6 ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int FUNC0 (struct ib_qp*,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_steering*) ; 
 struct mlx4_ib_steering* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_qp* FUNC10 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC11(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	int err;
	struct mlx4_ib_dev *mdev = FUNC9(ibqp->device);
	struct mlx4_ib_qp *mqp = FUNC10(ibqp);
	u64 reg_id;
	struct mlx4_ib_steering *ib_steering = NULL;

	if (mdev->dev->caps.steering_mode ==
	    MLX4_STEERING_MODE_DEVICE_MANAGED) {
		ib_steering = FUNC2(sizeof(*ib_steering), GFP_KERNEL);
		if (!ib_steering)
			return -ENOMEM;
	}

	err = FUNC5(mdev->dev, &mqp->mqp, gid->raw, mqp->port,
				    !!(mqp->flags &
				       MLX4_IB_QP_BLOCK_MULTICAST_LOOPBACK),
				    MLX4_PROT_IB_IPV6, &reg_id);
	if (err)
		goto err_malloc;

	err = FUNC0(ibqp, gid);
	if (err)
		goto err_add;

	if (ib_steering) {
		FUNC4(ib_steering->gid.raw, gid->raw, 16);
		ib_steering->reg_id = reg_id;
		FUNC7(&mqp->mutex);
		FUNC3(&ib_steering->list, &mqp->steering_rules);
		FUNC8(&mqp->mutex);
	}
	return 0;

err_add:
	FUNC6(mdev->dev, &mqp->mqp, gid->raw,
			      MLX4_PROT_IB_IPV6, reg_id);
err_malloc:
	FUNC1(ib_steering);

	return err;
}