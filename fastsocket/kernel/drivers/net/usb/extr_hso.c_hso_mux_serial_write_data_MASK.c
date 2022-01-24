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
struct hso_serial {int /*<<< orphan*/  tx_data_count; int /*<<< orphan*/  tx_data; int /*<<< orphan*/  ctrl_req_tx; int /*<<< orphan*/  tx_urb; TYPE_1__* parent; } ;
struct TYPE_2__ {int port_spec; } ;

/* Variables and functions */
 int EINVAL ; 
 int HSO_PORT_MASK ; 
 int /*<<< orphan*/  USB_CDC_SEND_ENCAPSULATED_COMMAND ; 
 int FUNC0 (struct hso_serial*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hso_serial *serial)
{
	if (NULL == serial)
		return -EINVAL;

	return FUNC0(serial,
				  USB_CDC_SEND_ENCAPSULATED_COMMAND,
				  serial->parent->port_spec & HSO_PORT_MASK,
				  serial->tx_urb,
				  &serial->ctrl_req_tx,
				  serial->tx_data, serial->tx_data_count);
}