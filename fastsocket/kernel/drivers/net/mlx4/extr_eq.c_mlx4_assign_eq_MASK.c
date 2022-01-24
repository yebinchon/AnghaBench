#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned long long pool_bm; int /*<<< orphan*/  pool_lock; } ;
struct TYPE_6__ {TYPE_4__* eq; int /*<<< orphan*/ * irq_names; } ;
struct mlx4_priv {TYPE_2__ msix_ctl; TYPE_1__ eq_table; } ;
struct TYPE_8__ {int comp_pool; int num_comp_vectors; } ;
struct mlx4_dev {TYPE_3__ caps; } ;
struct cpu_rmap {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MLX4_IRQNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int FUNC1 (struct cpu_rmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx4_msi_x_interrupt ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,char*) ; 

int FUNC8(struct mlx4_dev *dev, char *name, struct cpu_rmap *rmap,
		   int *vector)
{

	struct mlx4_priv *priv = FUNC2(dev);
	int vec = 0, err = 0, i;

	FUNC4(&priv->msix_ctl.pool_lock);
	for (i = 0; !vec && i < dev->caps.comp_pool; i++) {
		if (~priv->msix_ctl.pool_bm & 1ULL << i) {
			priv->msix_ctl.pool_bm |= 1ULL << i;
			vec = dev->caps.num_comp_vectors + 1 + i;
			FUNC7(priv->eq_table.irq_names +
					vec * MLX4_IRQNAME_SIZE,
					MLX4_IRQNAME_SIZE, "%s", name);
#ifdef CONFIG_RFS_ACCEL
			if (rmap) {
				err = irq_cpu_rmap_add(rmap,
						       priv->eq_table.eq[vec].irq);
				if (err)
					mlx4_warn(dev, "Failed adding irq rmap\n");
			}
#endif
			err = FUNC6(priv->eq_table.eq[vec].irq,
					  mlx4_msi_x_interrupt, 0,
					  &priv->eq_table.irq_names[vec<<5],
					  priv->eq_table.eq + vec);
			if (err) {
				/*zero out bit by fliping it*/
				priv->msix_ctl.pool_bm ^= 1 << i;
				vec = 0;
				continue;
				/*we dont want to break here*/
			}
			FUNC0(&priv->eq_table.eq[vec], 1);
		}
	}
	FUNC5(&priv->msix_ctl.pool_lock);

	if (vec) {
		*vector = vec;
	} else {
		*vector = 0;
		err = (i == dev->caps.comp_pool) ? -ENOSPC : err;
	}
	return err;
}