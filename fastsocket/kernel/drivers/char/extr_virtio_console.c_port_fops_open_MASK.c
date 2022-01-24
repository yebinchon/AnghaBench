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
struct port {int guest_connected; int /*<<< orphan*/  kref; int /*<<< orphan*/  outvq_lock; int /*<<< orphan*/  inbuf_lock; } ;
struct inode {struct cdev* i_cdev; } ;
struct file {struct port* private_data; } ;
struct cdev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  VIRTIO_CONSOLE_PORT_OPEN ; 
 struct port* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 int /*<<< orphan*/  remove_port ; 
 int /*<<< orphan*/  FUNC5 (struct port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp)
{
	struct cdev *cdev = inode->i_cdev;
	struct port *port;
	int ret;

	/* We get the port with a kref here */
	port = FUNC0(cdev->dev);
	if (!port) {
		/* Port was unplugged before we could proceed */
		return -ENXIO;
	}
	filp->private_data = port;

	/*
	 * Don't allow opening of console port devices -- that's done
	 * via /dev/hvc
	 */
	if (FUNC1(port)) {
		ret = -ENXIO;
		goto out;
	}

	/* Allow only one process to open a particular port at a time */
	FUNC6(&port->inbuf_lock);
	if (port->guest_connected) {
		FUNC7(&port->inbuf_lock);
		ret = -EBUSY;
		goto out;
	}

	port->guest_connected = true;
	FUNC7(&port->inbuf_lock);

	FUNC6(&port->outvq_lock);
	/*
	 * There might be a chance that we missed reclaiming a few
	 * buffers in the window of the port getting previously closed
	 * and opening now.
	 */
	FUNC4(port);
	FUNC7(&port->outvq_lock);

	FUNC3(inode, filp);

	/* Notify host of port being opened */
	FUNC5(filp->private_data, VIRTIO_CONSOLE_PORT_OPEN, 1);

	return 0;
out:
	FUNC2(&port->kref, remove_port);
	return ret;
}