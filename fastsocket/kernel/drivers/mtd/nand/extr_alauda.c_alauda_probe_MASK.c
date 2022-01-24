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
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct alauda {int /*<<< orphan*/  kref; int /*<<< orphan*/  port; int /*<<< orphan*/  card_mutex; int /*<<< orphan*/  dev; void* bulk_out; int /*<<< orphan*/  bulk_in; void* write_out; struct usb_interface* interface; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALAUDA_PORT_SM ; 
 int /*<<< orphan*/  ALAUDA_PORT_XD ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct alauda*) ; 
 int /*<<< orphan*/  alauda_delete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct alauda* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct alauda*,struct alauda*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC9 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_interface*,struct alauda*) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *interface,
		const struct usb_device_id *id)
{
	struct alauda *al;
	struct usb_host_interface *iface;
	struct usb_endpoint_descriptor *ep,
			*ep_in=NULL, *ep_out=NULL, *ep_wr=NULL;
	int i, err = -ENOMEM;

	al = FUNC5(2*sizeof(*al), GFP_KERNEL);
	if (!al)
		goto error;

	FUNC3(&al->kref);
	FUNC13(interface, al);

	al->dev = FUNC11(FUNC2(interface));
	al->interface = interface;

	iface = interface->cur_altsetting;
	for (i = 0; i < iface->desc.bNumEndpoints; ++i) {
		ep = &iface->endpoint[i].desc;

		if (FUNC8(ep)) {
			ep_in = ep;
		} else if (FUNC9(ep)) {
			if (i==0)
				ep_wr = ep;
			else
				ep_out = ep;
		}
	}
	err = -EIO;
	if (!ep_wr || !ep_in || !ep_out)
		goto error;

	al->write_out = FUNC14(al->dev,
			FUNC10(ep_wr));
	al->bulk_in = FUNC12(al->dev,
			FUNC10(ep_in));
	al->bulk_out = FUNC14(al->dev,
			FUNC10(ep_out));

	/* second device is identical up to now */
	FUNC6(al+1, al, sizeof(*al));

	FUNC7(&al[0].card_mutex);
	FUNC7(&al[1].card_mutex);

	al[0].port = ALAUDA_PORT_XD;
	al[1].port = ALAUDA_PORT_SM;

	FUNC1(&interface->dev, "alauda probed\n");
	FUNC0(al);
	FUNC0(al+1);

	return 0;

error:
	if (al)
		FUNC4(&al->kref, alauda_delete);
	return err;
}