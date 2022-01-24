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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ use_events; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;

/* Variables and functions */
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_2__* FUNC2 (struct mlx4_dev*) ; 

int FUNC3(struct mlx4_dev *dev, u8 cmd, u16 param,
		  unsigned long timeout)
{
	if (FUNC2(dev)->cmd.use_events)
		return FUNC1(dev, cmd, param, timeout);
	return FUNC0(dev, cmd, param, timeout);
}