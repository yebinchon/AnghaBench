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
struct uart_port {int dummy; } ;
struct platform_device {size_t id; } ;
struct mpsc_port_info {int /*<<< orphan*/  port; int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 size_t MPSC_NUM_CTLRS ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*,struct platform_device*,size_t) ; 
 int FUNC1 (struct mpsc_port_info*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpsc_port_info*) ; 
 int FUNC3 (struct mpsc_port_info*) ; 
 struct mpsc_port_info* mpsc_ports ; 
 int /*<<< orphan*/  mpsc_reg ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct mpsc_port_info	*pi;
	int			rc = -ENODEV;

	FUNC5("mpsc_drv_probe: Adding MPSC %d\n", dev->id);

	if (dev->id < MPSC_NUM_CTLRS) {
		pi = &mpsc_ports[dev->id];

		if (!(rc = FUNC1(pi, dev))) {
			FUNC0(pi, dev, dev->id);

			if (!(rc = FUNC3(pi))) {
				FUNC6(&pi->tx_lock);
				if (!(rc = FUNC7(&mpsc_reg,
								&pi->port))) {
					rc = 0;
				} else {
					FUNC4((struct uart_port *)
							pi);
					FUNC2(pi);
				}
			} else {
				FUNC2(pi);
			}
		}
	}

	return rc;
}