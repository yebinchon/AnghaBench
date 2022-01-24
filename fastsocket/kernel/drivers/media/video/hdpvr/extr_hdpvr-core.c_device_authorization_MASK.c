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
struct hdpvr_device {char* usbc_buf; int /*<<< orphan*/  usbc_mutex; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  udev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HDPVR_FIRMWARE_VERSION 131 
#define  HDPVR_FIRMWARE_VERSION_0X12 130 
#define  HDPVR_FIRMWARE_VERSION_0X15 129 
#define  HDPVR_FIRMWARE_VERSION_AC3 128 
 int /*<<< orphan*/  HDPVR_FLAG_AC3_CAP ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC12(struct hdpvr_device *dev)
{

	int ret, retval = -ENOMEM;
	char request_type = 0x38, rcv_request = 0x81;
	char *response;
#ifdef HDPVR_DEBUG
	size_t buf_size = 46;
	char *print_buf = kzalloc(5*buf_size+1, GFP_KERNEL);
	if (!print_buf) {
		v4l2_err(&dev->v4l2_dev, "Out of memory\n");
		return retval;
	}
#endif

	FUNC4(&dev->usbc_mutex);
	ret = FUNC6(dev->udev,
			      FUNC7(dev->udev, 0),
			      rcv_request, 0x80 | request_type,
			      0x0400, 0x0003,
			      dev->usbc_buf, 46,
			      10000);
	if (ret != 46) {
		FUNC10(&dev->v4l2_dev,
			 "unexpected answer of status request, len %d\n", ret);
		goto unlock;
	}
#ifdef HDPVR_DEBUG
	else {
		hex_dump_to_buffer(dev->usbc_buf, 46, 16, 1, print_buf,
				   5*buf_size+1, 0);
		v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
			 "Status request returned, len %d: %s\n",
			 ret, print_buf);
	}
#endif

	FUNC11(&dev->v4l2_dev, "firmware version 0x%x dated %s\n",
			  dev->usbc_buf[1], &dev->usbc_buf[2]);

	switch (dev->usbc_buf[1]) {
	case HDPVR_FIRMWARE_VERSION:
		dev->flags &= ~HDPVR_FLAG_AC3_CAP;
		break;
	case HDPVR_FIRMWARE_VERSION_AC3:
	case HDPVR_FIRMWARE_VERSION_0X12:
	case HDPVR_FIRMWARE_VERSION_0X15:
		dev->flags |= HDPVR_FLAG_AC3_CAP;
		break;
	default:
		FUNC11(&dev->v4l2_dev, "untested firmware, the driver might"
			  " not work.\n");
		if (dev->usbc_buf[1] >= HDPVR_FIRMWARE_VERSION_AC3)
			dev->flags |= HDPVR_FLAG_AC3_CAP;
		else
			dev->flags &= ~HDPVR_FLAG_AC3_CAP;
	}

	response = dev->usbc_buf+38;
#ifdef HDPVR_DEBUG
	hex_dump_to_buffer(response, 8, 16, 1, print_buf, 5*buf_size+1, 0);
	v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev, "challenge: %s\n",
		 print_buf);
#endif
	FUNC0(response);
#ifdef HDPVR_DEBUG
	hex_dump_to_buffer(response, 8, 16, 1, print_buf, 5*buf_size+1, 0);
	v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev, " response: %s\n",
		 print_buf);
#endif

	FUNC3(100);
	ret = FUNC6(dev->udev,
			      FUNC8(dev->udev, 0),
			      0xd1, 0x00 | request_type,
			      0x0000, 0x0000,
			      response, 8,
			      10000);
	FUNC9(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
		 "magic request returned %d\n", ret);

	retval = ret != 8;
unlock:
	FUNC5(&dev->usbc_mutex);
	return retval;
}