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
struct mlx4_dev {int num_vfs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,int,int) ; 

__attribute__((used)) static int FUNC1(struct mlx4_dev *dev, int vf)
{
	if ((vf < 0) || (vf >= dev->num_vfs)) {
		FUNC0(dev, "Bad vf number:%d (number of activated vf: %d)\n", vf, dev->num_vfs);
		return -EINVAL;
	}

	return vf+1;
}