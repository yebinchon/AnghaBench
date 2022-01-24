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
struct rdma_id_private {int state; int /*<<< orphan*/  lock; } ;
typedef  enum rdma_cm_state { ____Placeholder_rdma_cm_state } rdma_cm_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static enum rdma_cm_state FUNC2(struct rdma_id_private *id_priv,
				   enum rdma_cm_state exch)
{
	unsigned long flags;
	enum rdma_cm_state old;

	FUNC0(&id_priv->lock, flags);
	old = id_priv->state;
	id_priv->state = exch;
	FUNC1(&id_priv->lock, flags);
	return old;
}