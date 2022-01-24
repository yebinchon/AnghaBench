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
struct usb_ov511 {int maxwidth; int maxheight; int minwidth; int minheight; int brightness; int contrast; int colour; int hue; int /*<<< orphan*/  sensor; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SEN_KS0127 ; 
 int /*<<< orphan*/  SEN_KS0127B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct usb_ov511*,int) ; 
 scalar_t__ FUNC4 (struct usb_ov511*) ; 

__attribute__((used)) static int
FUNC5(struct usb_ov511 *ov)
{
	int rc;

// FIXME: I don't know how to sync or reset it yet
#if 0
	if (ov51x_init_ks_sensor(ov) < 0) {
		err("Failed to initialize the KS0127");
		return -1;
	} else {
		PDEBUG(1, "KS012x(B) sensor detected");
	}
#endif

	/* Detect decoder subtype */
	rc = FUNC3(ov, 0x00);
	if (rc < 0) {
		FUNC2("Error detecting sensor type");
		return -1;
	} else if (rc & 0x08) {
		rc = FUNC3(ov, 0x3d);
		if (rc < 0) {
			FUNC2("Error detecting sensor type");
			return -1;
		} else if ((rc & 0x0f) == 0) {
			FUNC1(&ov->dev->dev, "Sensor is a KS0127\n");
			ov->sensor = SEN_KS0127;
		} else if ((rc & 0x0f) == 9) {
			FUNC1(&ov->dev->dev, "Sensor is a KS0127B Rev. A\n");
			ov->sensor = SEN_KS0127B;
		}
	} else {
		FUNC2("Error: Sensor is an unsupported KS0122");
		return -1;
	}

	/* Set sensor-specific vars */
	ov->maxwidth = 640;
	ov->maxheight = 480;
	ov->minwidth = 64;
	ov->minheight = 48;

	// FIXME: These do not match the actual settings yet
	ov->brightness = 0x80 << 8;
	ov->contrast = 0x80 << 8;
	ov->colour = 0x80 << 8;
	ov->hue = 0x80 << 8;

	/* This device is not supported yet. Bail out now... */
	FUNC2("This sensor is not supported yet.");
	return -1;

	return 0;
}