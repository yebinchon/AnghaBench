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
typedef  scalar_t__ u32 ;
struct vio_driver_state {int dummy; } ;
struct vnet_port {struct vio_driver_state vio; } ;
struct vio_dring_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int ECONNRESET ; 
 int /*<<< orphan*/  VIO_DRING_ACTIVE ; 
 int /*<<< orphan*/  VIO_DRING_STOPPED ; 
 scalar_t__ FUNC0 (scalar_t__,struct vio_dring_state*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct vio_dring_state*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct vnet_port*,struct vio_dring_state*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnet_port*,struct vio_dring_state*,scalar_t__,int*) ; 

__attribute__((used)) static int FUNC6(struct vnet_port *port, struct vio_dring_state *dr,
			u32 start, u32 end)
{
	struct vio_driver_state *vio = &port->vio;
	int ack_start = -1, ack_end = -1;

	end = (end == (u32) -1) ? FUNC1(start, dr) : FUNC0(end, dr);

	FUNC3(DATA, "vnet_walk_rx start[%08x] end[%08x]\n", start, end);

	while (start != end) {
		int ack = 0, err = FUNC5(port, dr, start, &ack);
		if (err == -ECONNRESET)
			return err;
		if (err != 0)
			break;
		if (ack_start == -1)
			ack_start = start;
		ack_end = start;
		start = FUNC0(start, dr);
		if (ack && start != end) {
			err = FUNC4(port, dr, ack_start, ack_end,
					    VIO_DRING_ACTIVE);
			if (err == -ECONNRESET)
				return err;
			ack_start = -1;
		}
	}
	if (FUNC2(ack_start == -1))
		ack_start = ack_end = FUNC1(start, dr);
	return FUNC4(port, dr, ack_start, ack_end, VIO_DRING_STOPPED);
}