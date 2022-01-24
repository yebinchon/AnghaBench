#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx4_priv {int /*<<< orphan*/  bf_mutex; int /*<<< orphan*/  bf_list; } ;
struct TYPE_4__ {int bf_reg_size; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_bf {int reg; TYPE_2__* uar; } ;
struct TYPE_5__ {int bf_map; int free_bf_bmap; int /*<<< orphan*/  bf_list; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct mlx4_dev *dev, struct mlx4_bf *bf)
{
	struct mlx4_priv *priv = FUNC6(dev);
	int idx;

	if (!bf->uar || !bf->uar->bf_map)
		return;

	FUNC8(&priv->bf_mutex);
	idx = (bf->reg - bf->uar->bf_map) / dev->caps.bf_reg_size;
	bf->uar->free_bf_bmap &= ~(1 << idx);
	if (!bf->uar->free_bf_bmap) {
		if (!FUNC5(&bf->uar->bf_list))
			FUNC4(&bf->uar->bf_list);

		FUNC0(bf->uar->bf_map);
		FUNC1(bf->uar->map);
		FUNC7(dev, bf->uar);
		FUNC2(bf->uar);
	} else if (FUNC5(&bf->uar->bf_list))
		FUNC3(&bf->uar->bf_list, &priv->bf_list);

	FUNC9(&priv->bf_mutex);
}