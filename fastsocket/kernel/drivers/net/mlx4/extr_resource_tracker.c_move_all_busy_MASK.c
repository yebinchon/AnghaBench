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
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct mlx4_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev, int slave,
			 enum mlx4_resource type)
{
	unsigned long begin;
	int busy;

	begin = jiffies;
	do {
		busy = FUNC0(dev, slave, type, 0);
		if (FUNC2(jiffies, begin + 5 * HZ))
			break;
		if (busy)
			FUNC1();
	} while (busy);

	if (busy)
		busy = FUNC0(dev, slave, type, 1);

	return busy;
}