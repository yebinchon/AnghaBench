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
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int width; int height; int bytesperline; int sizeimage; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  pixelformat; } ;
struct sd {int video_mode; int current_mode; int orig_mode; TYPE_1__ mode; } ;
struct cam {int bulk; int bulk_nurbs; int bulk_size; int nmodes; TYPE_1__* cam_mode; } ;
struct gspca_dev {int* usb_buf; struct cam cam; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_ERR ; 
 int /*<<< orphan*/  D_PROBE ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_STV0680 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct gspca_dev*) ; 
 int FUNC4 (struct gspca_dev*,int) ; 
 int FUNC5 (struct gspca_dev*,int) ; 
 int FUNC6 (struct gspca_dev*,int,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct gspca_dev *gspca_dev,
			const struct usb_device_id *id)
{
	int ret;
	struct sd *sd = (struct sd *) gspca_dev;
	struct cam *cam = &gspca_dev->cam;

	/* Give the camera some time to settle, otherwise initalization will
	   fail on hotplug, and yes it really needs a full second. */
	FUNC2(1000);

	/* ping camera to be sure STV0680 is present */
	if (FUNC6(gspca_dev, 0, 0x88, 0x5678, 0x02) != 0x02 ||
	    gspca_dev->usb_buf[0] != 0x56 || gspca_dev->usb_buf[1] != 0x78) {
		FUNC0(D_ERR, "STV(e): camera ping failed!!");
		return FUNC4(gspca_dev, -ENODEV);
	}

	/* get camera descriptor */
	if (FUNC6(gspca_dev, 2, 0x06, 0x0200, 0x09) != 0x09)
		return FUNC4(gspca_dev, -ENODEV);

	if (FUNC6(gspca_dev, 2, 0x06, 0x0200, 0x22) != 0x22 ||
	    gspca_dev->usb_buf[7] != 0xa0 || gspca_dev->usb_buf[8] != 0x23) {
		FUNC0(D_ERR, "Could not get descriptor 0200.");
		return FUNC4(gspca_dev, -ENODEV);
	}
	if (FUNC6(gspca_dev, 0, 0x8a, 0, 0x02) != 0x02)
		return FUNC4(gspca_dev, -ENODEV);
	if (FUNC6(gspca_dev, 0, 0x8b, 0, 0x24) != 0x24)
		return FUNC4(gspca_dev, -ENODEV);
	if (FUNC6(gspca_dev, 0, 0x85, 0, 0x10) != 0x10)
		return FUNC4(gspca_dev, -ENODEV);

	if (!(gspca_dev->usb_buf[7] & 0x09)) {
		FUNC0(D_ERR, "Camera supports neither CIF nor QVGA mode");
		return -ENODEV;
	}
	if (gspca_dev->usb_buf[7] & 0x01)
		FUNC0(D_PROBE, "Camera supports CIF mode");
	if (gspca_dev->usb_buf[7] & 0x02)
		FUNC0(D_PROBE, "Camera supports VGA mode");
	if (gspca_dev->usb_buf[7] & 0x04)
		FUNC0(D_PROBE, "Camera supports QCIF mode");
	if (gspca_dev->usb_buf[7] & 0x08)
		FUNC0(D_PROBE, "Camera supports QVGA mode");

	if (gspca_dev->usb_buf[7] & 0x01)
		sd->video_mode = 0x00; /* CIF */
	else
		sd->video_mode = 0x03; /* QVGA */

	/* FW rev, ASIC rev, sensor ID  */
	FUNC0(D_PROBE, "Firmware rev is %i.%i",
	       gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
	FUNC0(D_PROBE, "ASIC rev is %i.%i",
	       gspca_dev->usb_buf[2], gspca_dev->usb_buf[3]);
	FUNC0(D_PROBE, "Sensor ID is %i",
	       (gspca_dev->usb_buf[4]*16) + (gspca_dev->usb_buf[5]>>4));


	ret = FUNC3(gspca_dev);
	if (ret < 0)
		return ret;
	sd->current_mode = sd->orig_mode = ret;

	ret = FUNC5(gspca_dev, sd->video_mode);
	if (ret < 0)
		return ret;

	/* Get mode details */
	if (FUNC6(gspca_dev, 0, 0x8f, 0, 0x10) != 0x10)
		return FUNC4(gspca_dev, -EIO);

	cam->bulk = 1;
	cam->bulk_nurbs = 1; /* The cam cannot handle more */
	cam->bulk_size = (gspca_dev->usb_buf[0] << 24) |
			 (gspca_dev->usb_buf[1] << 16) |
			 (gspca_dev->usb_buf[2] << 8) |
			 (gspca_dev->usb_buf[3]);
	sd->mode.width = (gspca_dev->usb_buf[4] << 8) |
			 (gspca_dev->usb_buf[5]);  /* 322, 356, 644 */
	sd->mode.height = (gspca_dev->usb_buf[6] << 8) |
			  (gspca_dev->usb_buf[7]); /* 242, 292, 484 */
	sd->mode.pixelformat = V4L2_PIX_FMT_STV0680;
	sd->mode.field = V4L2_FIELD_NONE;
	sd->mode.bytesperline = sd->mode.width;
	sd->mode.sizeimage = cam->bulk_size;
	sd->mode.colorspace = V4L2_COLORSPACE_SRGB;

	/* origGain = gspca_dev->usb_buf[12]; */

	cam->cam_mode = &sd->mode;
	cam->nmodes = 1;


	ret = FUNC5(gspca_dev, sd->orig_mode);
	if (ret < 0)
		return ret;

	if (FUNC6(gspca_dev, 2, 0x06, 0x0100, 0x12) != 0x12 ||
	    gspca_dev->usb_buf[8] != 0x53 || gspca_dev->usb_buf[9] != 0x05) {
		FUNC1("Could not get descriptor 0100.");
		return FUNC4(gspca_dev, -EIO);
	}

	return 0;
}