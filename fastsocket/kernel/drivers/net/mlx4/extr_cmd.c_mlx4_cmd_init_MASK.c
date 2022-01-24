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
struct TYPE_6__ {int toggle; int /*<<< orphan*/ * hcr; int /*<<< orphan*/  pool; scalar_t__ use_events; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  slave_cmd_mutex; int /*<<< orphan*/  hcr_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vhcr; int /*<<< orphan*/  vhcr_dma; } ;
struct mlx4_priv {TYPE_2__ cmd; TYPE_1__ mfunc; } ;
struct mlx4_dev {TYPE_3__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLX4_HCR_BASE ; 
 int /*<<< orphan*/  MLX4_HCR_SIZE ; 
 int /*<<< orphan*/  MLX4_MAILBOX_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

int FUNC12(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC7(dev);

	FUNC8(&priv->cmd.hcr_mutex);
	FUNC8(&priv->cmd.slave_cmd_mutex);
	FUNC11(&priv->cmd.poll_sem, 1);
	priv->cmd.use_events = 0;
	priv->cmd.toggle     = 1;

	priv->cmd.hcr = NULL;
	priv->mfunc.vhcr = NULL;

	if (!FUNC6(dev)) {
		priv->cmd.hcr = FUNC2(FUNC10(dev->pdev, 0) +
					MLX4_HCR_BASE, MLX4_HCR_SIZE);
		if (!priv->cmd.hcr) {
			FUNC4(dev, "Couldn't map command register.\n");
			return -ENOMEM;
		}
	}

	if (FUNC5(dev)) {
		priv->mfunc.vhcr = FUNC0(&(dev->pdev->dev), PAGE_SIZE,
						      &priv->mfunc.vhcr_dma,
						      GFP_KERNEL);
		if (!priv->mfunc.vhcr) {
			FUNC4(dev, "Couldn't allocate VHCR.\n");
			goto err_hcr;
		}
	}

	priv->cmd.pool = FUNC9("mlx4_cmd", dev->pdev,
					 MLX4_MAILBOX_SIZE,
					 MLX4_MAILBOX_SIZE, 0);
	if (!priv->cmd.pool)
		goto err_vhcr;

	return 0;

err_vhcr:
	if (FUNC5(dev))
		FUNC1(&(dev->pdev->dev), PAGE_SIZE,
				  priv->mfunc.vhcr, priv->mfunc.vhcr_dma);
	priv->mfunc.vhcr = NULL;

err_hcr:
	if (!FUNC6(dev))
		FUNC3(priv->cmd.hcr);
	return -ENOMEM;
}