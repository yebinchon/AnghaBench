#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned long long pool_bm; int /*<<< orphan*/  pool_lock; } ;
struct TYPE_6__ {TYPE_4__* eq; } ;
struct mlx4_priv {TYPE_3__ msix_ctl; TYPE_2__ eq_table; } ;
struct TYPE_5__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx4_dev *dev, int vec)
{
	struct mlx4_priv *priv = FUNC2(dev);
	/*bm index*/
	int i = vec - dev->caps.num_comp_vectors - 1;

	if (FUNC1(i >= 0)) {
		/*sanity check , making sure were not trying to free irq's
		  Belonging to a legacy EQ*/
		FUNC3(&priv->msix_ctl.pool_lock);
		if (priv->msix_ctl.pool_bm & 1ULL << i) {
			FUNC0(priv->eq_table.eq[vec].irq,
				 &priv->eq_table.eq[vec]);
			priv->msix_ctl.pool_bm &= ~(1ULL << i);
		}
		FUNC4(&priv->msix_ctl.pool_lock);
	}

}