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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {struct vio_dring_state* drings; } ;
struct vnet_port {struct vnet* vp; TYPE_2__ vio; } ;
struct vnet {struct net_device* dev; } ;
struct vio_dring_state {int /*<<< orphan*/  cons; } ;
struct TYPE_3__ {scalar_t__ stype_env; } ;
struct vio_dring_data {int /*<<< orphan*/  end_idx; TYPE_1__ tag; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIO_DRING_DATA ; 
 size_t VIO_DRIVER_TX_RING ; 
 scalar_t__ FUNC0 (struct vio_dring_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct vio_dring_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vio_dring_state*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct vio_dring_state*) ; 

__attribute__((used)) static int FUNC6(struct vnet_port *port, void *msgbuf)
{
	struct vio_dring_state *dr = &port->vio.drings[VIO_DRIVER_TX_RING];
	struct vio_dring_data *pkt = msgbuf;
	struct net_device *dev;
	struct vnet *vp;
	u32 end;

	if (FUNC4(pkt->tag.stype_env != VIO_DRING_DATA))
		return 0;

	end = pkt->end_idx;
	if (FUNC4(!FUNC1(dr, end)))
		return 0;

	dr->cons = FUNC3(end, dr);

	vp = port->vp;
	dev = vp->dev;
	if (FUNC4(FUNC2(dev) &&
		     FUNC5(dr) >= FUNC0(dr)))
		return 1;

	return 0;
}