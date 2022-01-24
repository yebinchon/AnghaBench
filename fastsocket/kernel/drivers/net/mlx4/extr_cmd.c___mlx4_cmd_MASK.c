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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {scalar_t__ use_events; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
	       int out_is_imm, u32 in_modifier, u8 op_modifier,
	       u16 op, unsigned long timeout, int native)
{
	if (FUNC6(dev->pdev))
		return -EIO;

	if (!FUNC3(dev) || (native && FUNC2(dev))) {
		if (FUNC4(dev)->cmd.use_events)
			return FUNC1(dev, in_param, out_param,
					     out_is_imm, in_modifier,
					     op_modifier, op, timeout);
		else
			return FUNC0(dev, in_param, out_param,
					     out_is_imm, in_modifier,
					     op_modifier, op, timeout);
	}
	return FUNC5(dev, in_param, out_param, out_is_imm,
			      in_modifier, op_modifier, op, timeout);
}