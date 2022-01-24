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
struct usb_usbvision {scalar_t__ streaming; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 scalar_t__ stream_on ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  video ; 
 struct usb_usbvision* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file,
			    void *priv, enum v4l2_buf_type type)
{
	struct usb_usbvision *usbvision = FUNC3(file);

	if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;

	if (usbvision->streaming == stream_on) {
		FUNC2(usbvision);
		/* Stop all video streamings */
		FUNC0(usbvision, video, s_stream, 0);
	}
	FUNC1(usbvision);

	return 0;
}