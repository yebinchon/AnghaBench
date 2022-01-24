#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virtqueue {TYPE_2__* vdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  hvc; } ;
struct port {TYPE_1__ cons; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  inbuf_lock; int /*<<< orphan*/  guest_connected; int /*<<< orphan*/  inbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 struct port* FUNC1 (int /*<<< orphan*/ ,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct port*) ; 
 int /*<<< orphan*/  FUNC6 (struct port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct virtqueue *vq)
{
	struct port *port;
	unsigned long flags;

	port = FUNC1(vq->vdev->priv, vq);
	if (!port)
		return;

	FUNC7(&port->inbuf_lock, flags);
	port->inbuf = FUNC2(port);

	/*
	 * Don't queue up data when port is closed.  This condition
	 * can be reached when a console port is not yet connected (no
	 * tty is spawned) and the host sends out data to console
	 * ports.  For generic serial ports, the host won't
	 * (shouldn't) send data till the guest is connected.
	 */
	if (!port->guest_connected)
		FUNC0(port);

	/* Send a SIGIO indicating new data in case the process asked for it */
	FUNC6(port);

	FUNC8(&port->inbuf_lock, flags);

	FUNC9(&port->waitqueue);

	if (FUNC5(port) && FUNC4(port->cons.hvc))
		FUNC3();
}