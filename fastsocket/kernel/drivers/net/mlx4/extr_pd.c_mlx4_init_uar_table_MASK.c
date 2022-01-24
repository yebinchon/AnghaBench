#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_uars; int /*<<< orphan*/  reserved_uars; } ;
struct mlx4_dev {TYPE_2__ caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  bitmap; } ;
struct TYPE_6__ {TYPE_1__ uar_table; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,...) ; 
 TYPE_3__* FUNC2 (struct mlx4_dev*) ; 

int FUNC3(struct mlx4_dev *dev)
{
	if (dev->caps.num_uars <= 128) {
		FUNC1(dev, "Only %d UAR pages (need more than 128)\n",
			 dev->caps.num_uars);
		FUNC1(dev, "Increase firmware log2_uar_bar_megabytes?\n");
		return -ENODEV;
	}

	return FUNC0(&FUNC2(dev)->uar_table.bitmap,
				dev->caps.num_uars, dev->caps.num_uars - 1,
				dev->caps.reserved_uars, 0);
}