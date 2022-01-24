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
struct usb_ov511 {scalar_t__ led_policy; int compress; scalar_t__ bridge; int packet_numbering; int maxwidth; int maxheight; int minwidth; int minheight; void* primary_i2c_slave; int /*<<< orphan*/  snap_enabled; TYPE_3__* dev; int /*<<< orphan*/  desc; } ;
struct usb_interface {int dummy; } ;
struct usb_host_interface {TYPE_2__* endpoint; } ;
struct ov511_regvals {int const member_1; int member_2; int /*<<< orphan*/  const member_0; } ;
typedef  int __u16 ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ BRG_OV518 ; 
 scalar_t__ BRG_OV518PLUS ; 
 int EBUSY ; 
 scalar_t__ LED_AUTO ; 
 scalar_t__ LED_OFF ; 
#define  OV511_DONE_BUS 132 
#define  OV511_REG_BUS 131 
 void* OV6xx0_SID ; 
 void* OV7xx0_SID ; 
 void* OV8xx0_SID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  R511_SYS_CUST_ID ; 
#define  R51x_SYS_INIT 130 
#define  R51x_SYS_RESET 129 
#define  R51x_SYS_SNAP 128 
 int /*<<< orphan*/  camlist ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dumppix ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct usb_ov511*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_ov511*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ov511*,int) ; 
 scalar_t__ FUNC9 (struct usb_ov511*,void*) ; 
 scalar_t__ FUNC10 (struct usb_ov511*) ; 
 scalar_t__ FUNC11 (struct usb_ov511*) ; 
 int FUNC12 (struct usb_ov511*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct usb_ov511*,int,int) ; 
 scalar_t__ FUNC14 (struct usb_ov511*,int,int,int) ; 
 int /*<<< orphan*/  snapshot ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_host_interface* FUNC16 (struct usb_interface*,int) ; 
 struct usb_interface* FUNC17 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct usb_ov511*,struct ov511_regvals*) ; 

__attribute__((used)) static int
FUNC19(struct usb_ov511 *ov)
{
	/* For 518 and 518+ */
	static struct ov511_regvals aRegvalsInit518[] = {
		{ OV511_REG_BUS, R51x_SYS_RESET,	0x40 },
		{ OV511_REG_BUS, R51x_SYS_INIT,		0xe1 },
		{ OV511_REG_BUS, R51x_SYS_RESET,	0x3e },
		{ OV511_REG_BUS, R51x_SYS_INIT,		0xe1 },
		{ OV511_REG_BUS, R51x_SYS_RESET,	0x00 },
		{ OV511_REG_BUS, R51x_SYS_INIT,		0xe1 },
		{ OV511_REG_BUS, 0x46,			0x00 },
		{ OV511_REG_BUS, 0x5d,			0x03 },
		{ OV511_DONE_BUS, 0x0, 0x00},
	};

	static struct ov511_regvals aRegvalsNorm518[] = {
		{ OV511_REG_BUS, R51x_SYS_SNAP,		0x02 }, /* Reset */
		{ OV511_REG_BUS, R51x_SYS_SNAP,		0x01 }, /* Enable */
		{ OV511_REG_BUS, 0x31, 			0x0f },
		{ OV511_REG_BUS, 0x5d,			0x03 },
		{ OV511_REG_BUS, 0x24,			0x9f },
		{ OV511_REG_BUS, 0x25,			0x90 },
		{ OV511_REG_BUS, 0x20,			0x00 },
		{ OV511_REG_BUS, 0x51,			0x04 },
		{ OV511_REG_BUS, 0x71,			0x19 },
		{ OV511_DONE_BUS, 0x0, 0x00 },
	};

	static struct ov511_regvals aRegvalsNorm518Plus[] = {
		{ OV511_REG_BUS, R51x_SYS_SNAP,		0x02 }, /* Reset */
		{ OV511_REG_BUS, R51x_SYS_SNAP,		0x01 }, /* Enable */
		{ OV511_REG_BUS, 0x31, 			0x0f },
		{ OV511_REG_BUS, 0x5d,			0x03 },
		{ OV511_REG_BUS, 0x24,			0x9f },
		{ OV511_REG_BUS, 0x25,			0x90 },
		{ OV511_REG_BUS, 0x20,			0x60 },
		{ OV511_REG_BUS, 0x51,			0x02 },
		{ OV511_REG_BUS, 0x71,			0x19 },
		{ OV511_REG_BUS, 0x40,			0xff },
		{ OV511_REG_BUS, 0x41,			0x42 },
		{ OV511_REG_BUS, 0x46,			0x00 },
		{ OV511_REG_BUS, 0x33,			0x04 },
		{ OV511_REG_BUS, 0x21,			0x19 },
		{ OV511_REG_BUS, 0x3f,			0x10 },
		{ OV511_DONE_BUS, 0x0, 0x00 },
	};

	FUNC0(4, "");

	/* First 5 bits of custom ID reg are a revision ID on OV518 */
	FUNC1(&ov->dev->dev, "Device revision %d\n",
		 0x1F & FUNC12(ov, R511_SYS_CUST_ID));

	/* Give it the default description */
	ov->desc = FUNC15(camlist, 0);

	if (FUNC18(ov, aRegvalsInit518))
		goto error;

	/* Set LED GPIO pin to output mode */
	if (FUNC14(ov, 0x57, 0x00, 0x02) < 0)
		goto error;

	/* LED is off by default with OV518; have to explicitly turn it on */
	if (ov->led_policy == LED_OFF || ov->led_policy == LED_AUTO)
		FUNC8(ov, 0);
	else
		FUNC8(ov, 1);

	/* Don't require compression if dumppix is enabled; otherwise it's
	 * required. OV518 has no uncompressed mode, to save RAM. */
	if (!dumppix && !ov->compress) {
		ov->compress = 1;
		FUNC2(&ov->dev->dev,
			 "Compression required with OV518...enabling\n");
	}

	if (ov->bridge == BRG_OV518) {
		if (FUNC18(ov, aRegvalsNorm518))
			goto error;
	} else if (ov->bridge == BRG_OV518PLUS) {
		if (FUNC18(ov, aRegvalsNorm518Plus))
			goto error;
	} else {
		FUNC3("Invalid bridge");
	}

	if (FUNC13(ov, 0x2f, 0x80) < 0)
		goto error;

	if (FUNC6(ov))
		goto error;

	if (ov->bridge == BRG_OV518)
	{
		struct usb_interface *ifp;
		struct usb_host_interface *alt;
		__u16 mxps = 0;

		ifp = FUNC17(ov->dev, 0);
		if (ifp) {
			alt = FUNC16(ifp, 7);
			if (alt)
				mxps = FUNC5(alt->endpoint[0].desc.wMaxPacketSize);
		}

		/* Some OV518s have packet numbering by default, some don't */
		if (mxps == 897)
			ov->packet_numbering = 1;
		else
			ov->packet_numbering = 0;
	} else {
		/* OV518+ has packet numbering turned on by default */
		ov->packet_numbering = 1;
	}

	FUNC7(ov, 0);

	ov->snap_enabled = snapshot;

	/* Test for 76xx */
	ov->primary_i2c_slave = OV7xx0_SID;
	if (FUNC9(ov, OV7xx0_SID) < 0)
		goto error;

	/* The OV518 must be more aggressive about sensor detection since
	 * I2C write will never fail if the sensor is not present. We have
	 * to try to initialize the sensor to detect its presence */

	if (FUNC4(ov) < 0) {
		/* Test for 6xx0 */
		ov->primary_i2c_slave = OV6xx0_SID;
		if (FUNC9(ov, OV6xx0_SID) < 0)
			goto error;

		if (FUNC4(ov) < 0) {
			/* Test for 8xx0 */
			ov->primary_i2c_slave = OV8xx0_SID;
			if (FUNC9(ov, OV8xx0_SID) < 0)
				goto error;

			if (FUNC4(ov) < 0) {
				FUNC3("Can't determine sensor slave IDs");
				goto error;
			} else {
				FUNC3("Detected unsupported OV8xx0 sensor");
				goto error;
			}
		} else {
			if (FUNC10(ov) < 0) {
				FUNC3("Failed to configure OV6xx0");
				goto error;
			}
		}
	} else {
		if (FUNC11(ov) < 0) {
			FUNC3("Failed to configure OV7xx0");
			goto error;
		}
	}

	ov->maxwidth = 352;
	ov->maxheight = 288;

	// The OV518 cannot go as low as the sensor can
	ov->minwidth = 160;
	ov->minheight = 120;

	return 0;

error:
	FUNC3("OV518 Config failed");

	return -EBUSY;
}