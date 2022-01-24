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
struct ib_mad_port_private {int /*<<< orphan*/  work; int /*<<< orphan*/  wq; int /*<<< orphan*/  port_list; } ;
struct ib_cq {struct ib_mad_port_private* cq_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ib_mad_port_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ib_cq *cq, void *arg)
{
	struct ib_mad_port_private *port_priv = cq->cq_context;
	unsigned long flags;

	FUNC2(&ib_mad_port_list_lock, flags);
	if (!FUNC0(&port_priv->port_list))
		FUNC1(port_priv->wq, &port_priv->work);
	FUNC3(&ib_mad_port_list_lock, flags);
}