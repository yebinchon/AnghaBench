#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dmpt_table; } ;
struct mlx4_priv {TYPE_1__ mr_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct mlx4_fmr {int /*<<< orphan*/  mpt; TYPE_2__ mr; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx4_dev*,TYPE_2__*) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx4_dev *dev, struct mlx4_fmr *fmr)
{
	struct mlx4_priv *priv = FUNC2(dev);
	int err;

	err = FUNC1(dev, &fmr->mr);
	if (err)
		return err;

	fmr->mpt = FUNC3(&priv->mr_table.dmpt_table,
				    FUNC0(fmr->mr.key), NULL);
	if (!fmr->mpt)
		return -ENOMEM;

	return 0;
}