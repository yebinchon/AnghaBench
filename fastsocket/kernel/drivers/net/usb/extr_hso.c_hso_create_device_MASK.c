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
struct usb_interface {int dummy; } ;
struct hso_device {int port_spec; int /*<<< orphan*/  async_put_intf; int /*<<< orphan*/  async_get_intf; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ref; struct usb_interface* interface; int /*<<< orphan*/  usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async_get_intf ; 
 int /*<<< orphan*/  async_put_intf ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hso_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct hso_device *FUNC5(struct usb_interface *intf,
					    int port_spec)
{
	struct hso_device *hso_dev;

	hso_dev = FUNC3(sizeof(*hso_dev), GFP_ATOMIC);
	if (!hso_dev)
		return NULL;

	hso_dev->port_spec = port_spec;
	hso_dev->usb = FUNC1(intf);
	hso_dev->interface = intf;
	FUNC2(&hso_dev->ref);
	FUNC4(&hso_dev->mutex);

	FUNC0(&hso_dev->async_get_intf, async_get_intf);
	FUNC0(&hso_dev->async_put_intf, async_put_intf);

	return hso_dev;
}