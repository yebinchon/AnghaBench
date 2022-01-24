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
struct mlx4_cq_table {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  table; int /*<<< orphan*/  cmpt_table; } ;
struct mlx4_priv {struct mlx4_cq_table cq_table; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct mlx4_dev *dev, int *cqn)
{
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_cq_table *cq_table = &priv->cq_table;
	int err;

	*cqn = FUNC0(&cq_table->bitmap);
	if (*cqn == -1)
		return -ENOMEM;

	err = FUNC3(dev, &cq_table->table, *cqn);
	if (err)
		goto err_out;

	err = FUNC3(dev, &cq_table->cmpt_table, *cqn);
	if (err)
		goto err_put;
	return 0;

err_put:
	FUNC4(dev, &cq_table->table, *cqn);

err_out:
	FUNC1(&cq_table->bitmap, *cqn);
	return err;
}