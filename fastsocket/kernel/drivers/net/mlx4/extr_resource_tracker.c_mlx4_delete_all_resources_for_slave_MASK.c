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
struct TYPE_6__ {TYPE_1__* slave_list; } ;
struct TYPE_8__ {TYPE_2__ res_tracker; } ;
struct TYPE_7__ {TYPE_4__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*,int) ; 

void FUNC13(struct mlx4_dev *dev, int slave)
{
	struct mlx4_priv *priv = FUNC0(dev);

	FUNC1(&priv->mfunc.master.res_tracker.slave_list[slave].mutex);
	/*VLAN*/
	FUNC7(dev, slave);
	FUNC6(dev, slave);
	FUNC10(dev, slave);
	FUNC11(dev, slave);
	FUNC4(dev, slave);
	FUNC8(dev, slave);
	FUNC5(dev, slave);
	FUNC9(dev, slave);
	FUNC3(dev, slave);
	FUNC12(dev, slave);
	FUNC2(&priv->mfunc.master.res_tracker.slave_list[slave].mutex);
}