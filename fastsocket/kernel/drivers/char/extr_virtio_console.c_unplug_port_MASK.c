#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hvc; int /*<<< orphan*/  list; } ;
struct port {int guest_connected; int host_connected; int /*<<< orphan*/  kref; int /*<<< orphan*/  name; int /*<<< orphan*/  debugfs_file; int /*<<< orphan*/  cdev; TYPE_3__* dev; TYPE_2__* portdev; TYPE_1__ cons; int /*<<< orphan*/  inbuf_lock; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  list; } ;
struct TYPE_8__ {int /*<<< orphan*/  class; } ;
struct TYPE_7__ {int /*<<< orphan*/  devt; int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  ports_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__ pdrvdata ; 
 int /*<<< orphan*/  pdrvdata_lock ; 
 int /*<<< orphan*/  port_attribute_group ; 
 int /*<<< orphan*/  remove_port ; 
 int /*<<< orphan*/  FUNC8 (struct port*) ; 
 int /*<<< orphan*/  FUNC9 (struct port*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct port *port)
{
	FUNC10(&port->portdev->ports_lock);
	FUNC7(&port->list);
	FUNC11(&port->portdev->ports_lock);

	FUNC10(&port->inbuf_lock);
	if (port->guest_connected) {
		/* Let the app know the port is going down. */
		FUNC9(port);

		/* Do this after sigio is actually sent */
		port->guest_connected = false;
		port->host_connected = false;

		FUNC13(&port->waitqueue);
	}
	FUNC11(&port->inbuf_lock);

	if (FUNC4(port)) {
		FUNC10(&pdrvdata_lock);
		FUNC7(&port->cons.list);
		FUNC11(&pdrvdata_lock);
		FUNC3(port->cons.hvc);
	}

	FUNC8(port);

	/*
	 * We should just assume the device itself has gone off --
	 * else a close on an open port later will try to send out a
	 * control message.
	 */
	port->portdev = NULL;

	FUNC12(&port->dev->kobj, &port_attribute_group);
	FUNC2(pdrvdata.class, port->dev->devt);
	FUNC0(port->cdev);

	FUNC1(port->debugfs_file);
	FUNC5(port->name);

	/*
	 * Locks around here are not necessary - a port can't be
	 * opened after we removed the port struct from ports_list
	 * above.
	 */
	FUNC6(&port->kref, remove_port);
}