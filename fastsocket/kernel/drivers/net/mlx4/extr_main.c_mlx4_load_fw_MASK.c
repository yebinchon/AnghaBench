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
struct TYPE_2__ {int /*<<< orphan*/  fw_icm; int /*<<< orphan*/  fw_pages; } ;
struct mlx4_priv {TYPE_1__ fw; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_HIGHUSER ; 
 int __GFP_NOWARN ; 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC7(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC6(dev);
	int err;

	priv->fw.fw_icm = FUNC3(dev, priv->fw.fw_pages,
					 GFP_HIGHUSER | __GFP_NOWARN, 0);
	if (!priv->fw.fw_icm) {
		FUNC4(dev, "Couldn't allocate FW area, aborting.\n");
		return -ENOMEM;
	}

	err = FUNC0(dev, priv->fw.fw_icm);
	if (err) {
		FUNC4(dev, "MAP_FA command failed, aborting.\n");
		goto err_free;
	}

	err = FUNC1(dev);
	if (err) {
		FUNC4(dev, "RUN_FW command failed, aborting.\n");
		goto err_unmap_fa;
	}

	return 0;

err_unmap_fa:
	FUNC2(dev);

err_free:
	FUNC5(dev, priv->fw.fw_icm, 0);
	return err;
}