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
struct macvlan_port {int /*<<< orphan*/ * vlan_hash; } ;
struct macvlan_dev {int /*<<< orphan*/  hlist; TYPE_1__* dev; struct macvlan_port* port; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct macvlan_dev *vlan)
{
	struct macvlan_port *port = vlan->port;
	const unsigned char *addr = vlan->dev->dev_addr;

	FUNC0(&vlan->hlist, &port->vlan_hash[addr[5]]);
}