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
struct mlx4_mr_table {int /*<<< orphan*/  mpt_bitmap; int /*<<< orphan*/  mtt_buddy; } ;
struct mlx4_priv {scalar_t__ reserved_mtts; struct mlx4_mr_table mr_table; } ;
struct TYPE_2__ {scalar_t__ reserved_mtts; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 

void FUNC6(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC5(dev);
	struct mlx4_mr_table *mr_table = &priv->mr_table;

	if (FUNC4(dev))
		return;
	if (priv->reserved_mtts >= 0)
		FUNC3(dev, priv->reserved_mtts,
				    FUNC0(dev->caps.reserved_mtts - 1));
	FUNC2(&mr_table->mtt_buddy);
	FUNC1(&mr_table->mpt_bitmap);
}