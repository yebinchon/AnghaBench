#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct TYPE_6__ {int width; int height; int /*<<< orphan*/  usb_err; int /*<<< orphan*/  alt; int /*<<< orphan*/  iface; int /*<<< orphan*/  dev; } ;
struct sd {scalar_t__ bridge; int clockdiv; int sensor; TYPE_3__ gspca_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ BRIDGE_OV518 ; 
 scalar_t__ BRIDGE_OV518PLUS ; 
 int /*<<< orphan*/  EIO ; 
 int R51x_FIFO_PSIZE ; 
#define  SEN_OV7620 129 
#define  SEN_OV7620AE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sd*,int,int,int) ; 
 struct usb_host_interface* FUNC6 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sd *sd)
{
	int hsegs, vsegs, packet_size;
	struct usb_host_interface *alt;
	struct usb_interface *intf;

	intf = FUNC7(sd->gspca_dev.dev, sd->gspca_dev.iface);
	alt = FUNC6(intf, sd->gspca_dev.alt);
	if (!alt) {
		FUNC0("Couldn't get altsetting");
		sd->gspca_dev.usb_err = -EIO;
		return;
	}

	packet_size = FUNC2(alt->endpoint[0].desc.wMaxPacketSize);
	FUNC3(sd, R51x_FIFO_PSIZE, packet_size & ~7, 2);

	/******** Set the mode ********/
	FUNC4(sd, 0x2b, 0);
	FUNC4(sd, 0x2c, 0);
	FUNC4(sd, 0x2d, 0);
	FUNC4(sd, 0x2e, 0);
	FUNC4(sd, 0x3b, 0);
	FUNC4(sd, 0x3c, 0);
	FUNC4(sd, 0x3d, 0);
	FUNC4(sd, 0x3e, 0);

	if (sd->bridge == BRIDGE_OV518) {
		/* Set 8-bit (YVYU) input format */
		FUNC5(sd, 0x20, 0x08, 0x08);

		/* Set 12-bit (4:2:0) output format */
		FUNC5(sd, 0x28, 0x80, 0xf0);
		FUNC5(sd, 0x38, 0x80, 0xf0);
	} else {
		FUNC4(sd, 0x28, 0x80);
		FUNC4(sd, 0x38, 0x80);
	}

	hsegs = sd->gspca_dev.width / 16;
	vsegs = sd->gspca_dev.height / 4;

	FUNC4(sd, 0x29, hsegs);
	FUNC4(sd, 0x2a, vsegs);

	FUNC4(sd, 0x39, hsegs);
	FUNC4(sd, 0x3a, vsegs);

	/* Windows driver does this here; who knows why */
	FUNC4(sd, 0x2f, 0x80);

	/******** Set the framerate ********/
	sd->clockdiv = 1;

	/* Mode independent, but framerate dependent, regs */
	/* 0x51: Clock divider; Only works on some cams which use 2 crystals */
	FUNC4(sd, 0x51, 0x04);
	FUNC4(sd, 0x22, 0x18);
	FUNC4(sd, 0x23, 0xff);

	if (sd->bridge == BRIDGE_OV518PLUS) {
		switch (sd->sensor) {
		case SEN_OV7620AE:
			if (sd->gspca_dev.width == 320) {
				FUNC4(sd, 0x20, 0x00);
				FUNC4(sd, 0x21, 0x19);
			} else {
				FUNC4(sd, 0x20, 0x60);
				FUNC4(sd, 0x21, 0x1f);
			}
			break;
		case SEN_OV7620:
			FUNC4(sd, 0x20, 0x00);
			FUNC4(sd, 0x21, 0x19);
			break;
		default:
			FUNC4(sd, 0x21, 0x19);
		}
	} else
		FUNC4(sd, 0x71, 0x17);	/* Compression-related? */

	/* FIXME: Sensor-specific */
	/* Bit 5 is what matters here. Of course, it is "reserved" */
	FUNC1(sd, 0x54, 0x23);

	FUNC4(sd, 0x2f, 0x80);

	if (sd->bridge == BRIDGE_OV518PLUS) {
		FUNC4(sd, 0x24, 0x94);
		FUNC4(sd, 0x25, 0x90);
		FUNC3(sd, 0xc4,    400, 2);	/* 190h   */
		FUNC3(sd, 0xc6,    540, 2);	/* 21ch   */
		FUNC3(sd, 0xc7,    540, 2);	/* 21ch   */
		FUNC3(sd, 0xc8,    108, 2);	/* 6ch    */
		FUNC3(sd, 0xca, 131098, 3);	/* 2001ah */
		FUNC3(sd, 0xcb,    532, 2);	/* 214h   */
		FUNC3(sd, 0xcc,   2400, 2);	/* 960h   */
		FUNC3(sd, 0xcd,     32, 2);	/* 20h    */
		FUNC3(sd, 0xce,    608, 2);	/* 260h   */
	} else {
		FUNC4(sd, 0x24, 0x9f);
		FUNC4(sd, 0x25, 0x90);
		FUNC3(sd, 0xc4,    400, 2);	/* 190h   */
		FUNC3(sd, 0xc6,    381, 2);	/* 17dh   */
		FUNC3(sd, 0xc7,    381, 2);	/* 17dh   */
		FUNC3(sd, 0xc8,    128, 2);	/* 80h    */
		FUNC3(sd, 0xca, 183331, 3);	/* 2cc23h */
		FUNC3(sd, 0xcb,    746, 2);	/* 2eah   */
		FUNC3(sd, 0xcc,   1750, 2);	/* 6d6h   */
		FUNC3(sd, 0xcd,     45, 2);	/* 2dh    */
		FUNC3(sd, 0xce,    851, 2);	/* 353h   */
	}

	FUNC4(sd, 0x2f, 0x80);
}