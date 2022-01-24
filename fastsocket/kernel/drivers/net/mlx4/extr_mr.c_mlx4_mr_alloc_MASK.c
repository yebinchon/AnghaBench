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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mlx4_mr {int dummy; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int) ; 
 int FUNC1 (struct mlx4_dev*) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,struct mlx4_mr*) ; 

int FUNC3(struct mlx4_dev *dev, u32 pd, u64 iova, u64 size, u32 access,
		  int npages, int page_shift, struct mlx4_mr *mr)
{
	u32 index;
	int err;

	index = FUNC1(dev);
	if (index == -1)
		return -ENOMEM;

	err = FUNC2(dev, index, pd, iova, size,
				     access, npages, page_shift, mr);
	if (err)
		FUNC0(dev, index);

	return err;
}