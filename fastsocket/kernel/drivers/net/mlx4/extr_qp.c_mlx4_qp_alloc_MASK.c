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
struct mlx4_qp_table {int /*<<< orphan*/  lock; } ;
struct mlx4_qp {int qpn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct TYPE_2__ {int num_qps; } ;
struct mlx4_dev {TYPE_1__ caps; int /*<<< orphan*/  qp_table_tree; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct mlx4_qp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mlx4_dev *dev, int qpn, struct mlx4_qp *qp)
{
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_qp_table *qp_table = &priv->qp_table;
	int err;

	if (!qpn)
		return -EINVAL;

	qp->qpn = qpn;

	err = FUNC3(dev, qpn);
	if (err)
		return err;

	FUNC6(&qp_table->lock);
	err = FUNC5(&dev->qp_table_tree, qp->qpn &
				(dev->caps.num_qps - 1), qp);
	FUNC7(&qp_table->lock);
	if (err)
		goto err_icm;

	FUNC0(&qp->refcount, 1);
	FUNC1(&qp->free);

	return 0;

err_icm:
	FUNC4(dev, qpn);
	return err;
}