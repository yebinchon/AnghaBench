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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_qp_table {int /*<<< orphan*/  bitmap; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 

void FUNC3(struct mlx4_dev *dev, int base_qpn, int cnt)
{
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_qp_table *qp_table = &priv->qp_table;

	if (FUNC1(dev, (u32) base_qpn))
		return;
	FUNC0(&qp_table->bitmap, base_qpn, cnt);
}