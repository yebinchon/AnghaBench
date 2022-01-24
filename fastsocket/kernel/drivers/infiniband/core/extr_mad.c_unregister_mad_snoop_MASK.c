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
struct ib_mad_snoop_private {size_t snoop_index; int /*<<< orphan*/  comp; struct ib_mad_qp_info* qp_info; } ;
struct ib_mad_qp_info {int /*<<< orphan*/  snoop_lock; int /*<<< orphan*/  snoop_count; int /*<<< orphan*/ ** snoop_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_snoop_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_snoop_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ib_mad_snoop_private *mad_snoop_priv)
{
	struct ib_mad_qp_info *qp_info;
	unsigned long flags;

	qp_info = mad_snoop_priv->qp_info;
	FUNC3(&qp_info->snoop_lock, flags);
	qp_info->snoop_table[mad_snoop_priv->snoop_index] = NULL;
	FUNC0(&qp_info->snoop_count);
	FUNC4(&qp_info->snoop_lock, flags);

	FUNC1(mad_snoop_priv);
	FUNC5(&mad_snoop_priv->comp);

	FUNC2(mad_snoop_priv);
}