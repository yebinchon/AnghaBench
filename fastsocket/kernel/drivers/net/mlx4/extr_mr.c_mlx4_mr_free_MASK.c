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
struct mlx4_mr {int /*<<< orphan*/  key; scalar_t__ enabled; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,struct mlx4_mr*) ; 

int FUNC4(struct mlx4_dev *dev, struct mlx4_mr *mr)
{
	int ret;

	ret = FUNC3(dev, mr);
	if (ret)
		return ret;
	if (mr->enabled)
		FUNC1(dev, FUNC0(mr->key));
	FUNC2(dev, FUNC0(mr->key));

	return 0;
}