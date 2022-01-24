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
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_icm; } ;
struct TYPE_4__ {TYPE_1__ fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*) ; 

__attribute__((used)) static void FUNC9(struct mlx4_dev *dev)
{
	FUNC8(dev);
	FUNC7(dev);
	if (FUNC4(dev))
		FUNC6(dev);
	else {
		FUNC0(dev, 0);
		FUNC3(dev);
		FUNC1(dev);
		FUNC2(dev, FUNC5(dev)->fw.fw_icm, 0);
	}
}