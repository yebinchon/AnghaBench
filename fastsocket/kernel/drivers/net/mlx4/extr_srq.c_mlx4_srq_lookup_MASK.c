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
typedef  int u32 ;
struct mlx4_srq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx4_srq {int dummy; } ;
struct TYPE_3__ {int num_srqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_srq_table srq_table; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct mlx4_dev*) ; 
 struct mlx4_srq* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct mlx4_srq *FUNC4(struct mlx4_dev *dev, u32 srqn)
{
	struct mlx4_srq_table *srq_table = &FUNC0(dev)->srq_table;
	struct mlx4_srq *srq;
	unsigned long flags;

	FUNC2(&srq_table->lock, flags);
	srq = FUNC1(&srq_table->tree,
				srqn & (dev->caps.num_srqs - 1));
	FUNC3(&srq_table->lock, flags);

	return srq;
}