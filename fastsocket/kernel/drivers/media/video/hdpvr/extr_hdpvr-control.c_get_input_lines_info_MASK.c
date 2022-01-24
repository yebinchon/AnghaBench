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
struct hdpvr_device {int* usbc_buf; int /*<<< orphan*/  usbc_mutex; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  print_buf ;

/* Variables and functions */
 int MSG_INFO ; 
 int hdpvr_debug ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ *,char*,int,char*) ; 

int FUNC6(struct hdpvr_device *dev)
{
#ifdef HDPVR_DEBUG
	char print_buf[9];
#endif
	int ret, lines;

	FUNC1(&dev->usbc_mutex);
	ret = FUNC3(dev->udev,
			      FUNC4(dev->udev, 0),
			      0x81, 0x80 | 0x38,
			      0x1800, 0x0003,
			      dev->usbc_buf, 3,
			      1000);

#ifdef HDPVR_DEBUG
	if (hdpvr_debug & MSG_INFO) {
		hex_dump_to_buffer(dev->usbc_buf, 3, 16, 1, print_buf,
				   sizeof(print_buf), 0);
		v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
			 "get input lines info returned: %d, %s\n", ret,
			 print_buf);
	}
#endif
	lines = dev->usbc_buf[1] << 8 | dev->usbc_buf[0];
	FUNC2(&dev->usbc_mutex);
	return lines;
}