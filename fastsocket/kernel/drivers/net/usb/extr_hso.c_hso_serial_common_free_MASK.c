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
struct hso_serial {int num_rx_urbs; int /*<<< orphan*/  tx_data; int /*<<< orphan*/  tx_urb; int /*<<< orphan*/ * rx_data; int /*<<< orphan*/ * rx_urb; int /*<<< orphan*/  minor; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_hsotype ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tty_drv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hso_serial *serial)
{
	int i;

	if (serial->parent->dev)
		FUNC0(serial->parent->dev, &dev_attr_hsotype);

	FUNC2(tty_drv, serial->minor);

	for (i = 0; i < serial->num_rx_urbs; i++) {
		/* unlink and free RX URB */
		FUNC3(serial->rx_urb[i]);
		/* free the RX buffer */
		FUNC1(serial->rx_data[i]);
	}

	/* unlink and free TX URB */
	FUNC3(serial->tx_urb);
	FUNC1(serial->tx_data);
}