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
struct net_device {scalar_t__ type; int flags; int /*<<< orphan*/  macvlan_port; } ;
struct macvlan_port {int passthru; int /*<<< orphan*/ * vlan_hash; int /*<<< orphan*/  vlans; struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int MACVLAN_HASH_SIZE ; 
 struct macvlan_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct macvlan_port*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct macvlan_port *port;
	unsigned int i;

	if (dev->type != ARPHRD_ETHER || dev->flags & IFF_LOOPBACK)
		return -EINVAL;

	port = FUNC2(sizeof(*port), GFP_KERNEL);
	if (port == NULL)
		return -ENOMEM;

	port->passthru = false;
	port->dev = dev;
	FUNC1(&port->vlans);
	for (i = 0; i < MACVLAN_HASH_SIZE; i++)
		FUNC0(&port->vlan_hash[i]);
	FUNC3(dev->macvlan_port, port);
	return 0;
}