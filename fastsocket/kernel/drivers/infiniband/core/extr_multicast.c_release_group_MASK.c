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
struct mcast_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  table; } ;
struct mcast_group {int /*<<< orphan*/  node; int /*<<< orphan*/  refcount; struct mcast_port* port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mcast_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcast_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mcast_group *group)
{
	struct mcast_port *port = group->port;
	unsigned long flags;

	FUNC4(&port->lock, flags);
	if (FUNC0(&group->refcount)) {
		FUNC3(&group->node, &port->table);
		FUNC5(&port->lock, flags);
		FUNC2(group);
		FUNC1(port);
	} else
		FUNC5(&port->lock, flags);
}