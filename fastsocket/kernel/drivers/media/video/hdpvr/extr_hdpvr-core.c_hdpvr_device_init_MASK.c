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
typedef  int u8 ;
struct hdpvr_video_info {int dummy; } ;
struct hdpvr_device {int* usbc_buf; int /*<<< orphan*/  status; int /*<<< orphan*/  usbc_mutex; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_DEFAULT_INDEX ; 
 int /*<<< orphan*/  CTRL_LOW_PASS_FILTER_VALUE ; 
 int EACCES ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  STATUS_IDLE ; 
 int boost_audio ; 
 scalar_t__ FUNC0 (struct hdpvr_device*) ; 
 struct hdpvr_video_info* FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  hdpvr_debug ; 
 int /*<<< orphan*/  FUNC2 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdpvr_video_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC9(struct hdpvr_device *dev)
{
	int ret;
	u8 *buf;
	struct hdpvr_video_info *vidinf;

	if (FUNC0(dev))
		return -EACCES;

	/* default options for init */
	FUNC2(dev);

	/* set filter options */
	FUNC4(&dev->usbc_mutex);
	buf = dev->usbc_buf;
	buf[0] = 0x03; buf[1] = 0x03; buf[2] = 0x00; buf[3] = 0x00;
	ret = FUNC6(dev->udev,
			      FUNC7(dev->udev, 0),
			      0x01, 0x38,
			      CTRL_LOW_PASS_FILTER_VALUE, CTRL_DEFAULT_INDEX,
			      buf, 4,
			      1000);
	FUNC8(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
		 "control request returned %d\n", ret);
	FUNC5(&dev->usbc_mutex);

	vidinf = FUNC1(dev);
	if (!vidinf)
		FUNC8(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
			"no valid video signal or device init failed\n");
	else
		FUNC3(vidinf);

	/* enable fan and bling leds */
	FUNC4(&dev->usbc_mutex);
	buf[0] = 0x1;
	ret = FUNC6(dev->udev,
			      FUNC7(dev->udev, 0),
			      0xd4, 0x38, 0, 0, buf, 1,
			      1000);
	FUNC8(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
		 "control request returned %d\n", ret);

	/* boost analog audio */
	buf[0] = boost_audio;
	ret = FUNC6(dev->udev,
			      FUNC7(dev->udev, 0),
			      0xd5, 0x38, 0, 0, buf, 1,
			      1000);
	FUNC8(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
		 "control request returned %d\n", ret);
	FUNC5(&dev->usbc_mutex);

	dev->status = STATUS_IDLE;
	return 0;
}