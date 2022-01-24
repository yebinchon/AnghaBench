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
struct TYPE_2__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  list; int /*<<< orphan*/  map; } ;
struct mlx4_priv {TYPE_1__ catas_err; } ;
struct mlx4_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ MLX4_CATAS_POLL_INTERVAL ; 
 int /*<<< orphan*/  MLX4_DEV_EVENT_CATASTROPHIC_ERROR ; 
 int /*<<< orphan*/  catas_list ; 
 int /*<<< orphan*/  catas_lock ; 
 int /*<<< orphan*/  catas_work ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*) ; 
 scalar_t__ internal_err_reset ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  mlx4_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(unsigned long dev_ptr)
{
	struct mlx4_dev *dev = (struct mlx4_dev *) dev_ptr;
	struct mlx4_priv *priv = FUNC3(dev);

	if (FUNC7(priv->catas_err.map)) {
		/* If the device is off-line, we cannot try to recover it */
		if (FUNC5(dev->pdev))
			FUNC4(&priv->catas_err.timer,
				  FUNC8(jiffies + MLX4_CATAS_POLL_INTERVAL));
		else {
			FUNC0(dev);
			FUNC2(dev, MLX4_DEV_EVENT_CATASTROPHIC_ERROR, 0);

			if (internal_err_reset) {
				FUNC9(&catas_lock);
				FUNC1(&priv->catas_err.list, &catas_list);
				FUNC10(&catas_lock);

				FUNC6(mlx4_wq, &catas_work);
			}
		}
	} else
		FUNC4(&priv->catas_err.timer,
			  FUNC8(jiffies + MLX4_CATAS_POLL_INTERVAL));
}