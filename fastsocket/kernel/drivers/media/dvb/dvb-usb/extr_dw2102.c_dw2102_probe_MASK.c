#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct TYPE_12__ {char* firmware; TYPE_1__* adapter; int /*<<< orphan*/  rc_key_map_size; int /*<<< orphan*/  rc_key_map; int /*<<< orphan*/ * devices; } ;
struct TYPE_11__ {int /*<<< orphan*/  frontend_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  d7500 ; 
 scalar_t__ FUNC1 (struct usb_interface*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ dw2102_properties ; 
 TYPE_2__ dw2104_properties ; 
 TYPE_2__ dw3101_properties ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* p7500 ; 
 int /*<<< orphan*/  prof_7500_frontend_attach ; 
 int /*<<< orphan*/  rc_map_tbs_table ; 
 TYPE_2__ s6x0_properties ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
		const struct usb_device_id *id)
{

	p7500 = FUNC2(sizeof(struct dvb_usb_device_properties), GFP_KERNEL);
	if (!p7500)
		return -ENOMEM;
	/* copy default structure */
	FUNC3(p7500, &s6x0_properties,
			sizeof(struct dvb_usb_device_properties));
	/* fill only different fields */
	p7500->firmware = "dvb-usb-p7500.fw";
	p7500->devices[0] = d7500;
	p7500->rc_key_map = rc_map_tbs_table;
	p7500->rc_key_map_size = FUNC0(rc_map_tbs_table);
	p7500->adapter->frontend_attach = prof_7500_frontend_attach;

	if (0 == FUNC1(intf, &dw2102_properties,
			THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC1(intf, &dw2104_properties,
			THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC1(intf, &dw3101_properties,
			THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC1(intf, &s6x0_properties,
			THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC1(intf, p7500,
			THIS_MODULE, NULL, adapter_nr))
		return 0;

	return -ENODEV;
}