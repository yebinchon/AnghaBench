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
struct vio_device_id {int dummy; } ;
struct vio_dev {int unit_address; } ;
struct veth_port {int lpar_map; } ;
struct veth_lpar_connection {int /*<<< orphan*/  kobject; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int HVMAXARCHITECTEDLPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 struct veth_lpar_connection** veth_cnx ; 
 struct net_device** veth_dev ; 
 int /*<<< orphan*/  FUNC2 (struct veth_lpar_connection*) ; 
 struct net_device* FUNC3 (int,struct vio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC5(struct vio_dev *vdev, const struct vio_device_id *id)
{
	int i = vdev->unit_address;
	struct net_device *dev;
	struct veth_port *port;

	dev = FUNC3(i, vdev);
	if (dev == NULL) {
		FUNC4(vdev);
		return 1;
	}
	veth_dev[i] = dev;

	port = (struct veth_port*)FUNC1(dev);

	/* Start the state machine on each connection on this vlan. If we're
	 * the first dev to do so this will commence link negotiation */
	for (i = 0; i < HVMAXARCHITECTEDLPS; i++) {
		struct veth_lpar_connection *cnx;

		if (! (port->lpar_map & (1 << i)))
			continue;

		cnx = veth_cnx[i];
		if (!cnx)
			continue;

		FUNC0(&cnx->kobject);
		FUNC2(cnx);
	}

	return 0;
}