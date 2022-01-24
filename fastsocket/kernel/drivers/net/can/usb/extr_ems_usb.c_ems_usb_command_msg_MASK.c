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
struct ems_usb {int /*<<< orphan*/ * tx_msg_buffer; int /*<<< orphan*/  udev; } ;
struct ems_cpc_msg {scalar_t__ length; } ;

/* Variables and functions */
 size_t CPC_HEADER_SIZE ; 
 scalar_t__ CPC_MSG_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ems_cpc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ems_usb *dev, struct ems_cpc_msg *msg)
{
	int actual_length;

	/* Copy payload */
	FUNC0(&dev->tx_msg_buffer[CPC_HEADER_SIZE], msg,
	       msg->length + CPC_MSG_HEADER_LEN);

	/* Clear header */
	FUNC1(&dev->tx_msg_buffer[0], 0, CPC_HEADER_SIZE);

	return FUNC2(dev->udev, FUNC3(dev->udev, 2),
			    &dev->tx_msg_buffer[0],
			    msg->length + CPC_MSG_HEADER_LEN + CPC_HEADER_SIZE,
			    &actual_length, 1000);
}