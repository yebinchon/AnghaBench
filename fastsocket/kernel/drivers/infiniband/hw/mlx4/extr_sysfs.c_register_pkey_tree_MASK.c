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
struct mlx4_ib_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct mlx4_ib_dev *device)
{
	int i;

	if (!FUNC0(device->dev))
		return 0;

	for (i = 0; i <= device->dev->num_vfs; ++i)
		FUNC1(device, i);

	return 0;
}