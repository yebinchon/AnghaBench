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
struct veth_port {int lpar_map; int stopped_map; int /*<<< orphan*/  queue_lock; } ;
struct veth_lpar_connection {int remote_lp; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int HVMAXARCHITECTEDVIRTUALLANS ; 
 struct veth_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 struct net_device** veth_dev ; 

__attribute__((used)) static void FUNC6(struct veth_lpar_connection *cnx)
{
	int i;

	for (i = 0; i < HVMAXARCHITECTEDVIRTUALLANS; i++) {
		struct net_device *dev = veth_dev[i];
		struct veth_port *port;
		unsigned long flags;

		if (! dev)
			continue;

		port = FUNC0(dev);

		if (! (port->lpar_map & (1<<cnx->remote_lp)))
			continue;

		FUNC3(&port->queue_lock, flags);

		port->stopped_map &= ~(1 << cnx->remote_lp);

		if (0 == port->stopped_map && FUNC1(dev)) {
			FUNC5("cnx %d: woke queue for %s.\n",
					cnx->remote_lp, dev->name);
			FUNC2(dev);
		}
		FUNC4(&port->queue_lock, flags);
	}
}