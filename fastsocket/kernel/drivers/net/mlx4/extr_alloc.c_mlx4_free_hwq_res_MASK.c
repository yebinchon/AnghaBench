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
struct mlx4_hwq_resources {int /*<<< orphan*/  db; int /*<<< orphan*/  buf; int /*<<< orphan*/  mtt; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx4_dev *dev, struct mlx4_hwq_resources *wqres,
		       int size)
{
	FUNC2(dev, &wqres->mtt);
	FUNC0(dev, size, &wqres->buf);
	FUNC1(dev, &wqres->db);
}