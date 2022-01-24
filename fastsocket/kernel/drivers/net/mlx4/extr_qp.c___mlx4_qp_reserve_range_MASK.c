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
struct mlx4_qp_table {int /*<<< orphan*/  bitmap; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 

int FUNC2(struct mlx4_dev *dev, int cnt, int align,
				   int *base)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_qp_table *qp_table = &priv->qp_table;

	*base = FUNC0(&qp_table->bitmap, cnt, align);
	if (*base == -1)
		return -ENOMEM;

	return 0;
}