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
struct TYPE_3__ {int /*<<< orphan*/  lp; struct vio_dring_state* drings; } ;
struct vnet_port {TYPE_2__* tx_bufs; TYPE_1__ vio; } ;
struct vio_dring_state {int entry_size; int num_entries; scalar_t__ ncookies; scalar_t__ pending; int /*<<< orphan*/ * base; int /*<<< orphan*/  cookies; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  ncookies; int /*<<< orphan*/  cookies; } ;

/* Variables and functions */
 size_t VIO_DRIVER_TX_RING ; 
 int VNET_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vnet_port *port)
{
	struct vio_dring_state *dr;
	int i;

	dr = &port->vio.drings[VIO_DRIVER_TX_RING];
	if (dr->base) {
		FUNC1(port->vio.lp, dr->base,
				   (dr->entry_size * dr->num_entries),
				   dr->cookies, dr->ncookies);
		dr->base = NULL;
		dr->entry_size = 0;
		dr->num_entries = 0;
		dr->pending = 0;
		dr->ncookies = 0;
	}

	for (i = 0; i < VNET_TX_RING_SIZE; i++) {
		void *buf = port->tx_bufs[i].buf;

		if (!buf)
			continue;

		FUNC2(port->vio.lp,
			  port->tx_bufs[i].cookies,
			  port->tx_bufs[i].ncookies);

		FUNC0(buf);
		port->tx_bufs[i].buf = NULL;
	}
}