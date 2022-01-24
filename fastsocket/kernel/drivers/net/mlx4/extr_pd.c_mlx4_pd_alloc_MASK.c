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
typedef  int u32 ;
struct mlx4_priv {int /*<<< orphan*/  pd_bitmap; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 

int FUNC2(struct mlx4_dev *dev, u32 *pdn)
{
	struct mlx4_priv *priv = FUNC1(dev);

	*pdn = FUNC0(&priv->pd_bitmap);
	if (*pdn == -1)
		return -ENOMEM;

	return 0;
}