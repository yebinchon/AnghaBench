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
struct usb_data_stream_properties {int dummy; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  endpoint; } ;
struct usb_data_stream {TYPE_1__ props; int /*<<< orphan*/ * complete; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  USB_BULK 129 
#define  USB_ISOC 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct usb_data_stream_properties*,int) ; 
 int FUNC2 (struct usb_data_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_data_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct usb_data_stream *stream, struct usb_data_stream_properties *props)
{
	if (stream == NULL || props == NULL)
		return -EINVAL;

	FUNC1(&stream->props, props, sizeof(*props));

	FUNC3(stream->udev,FUNC5(stream->udev,stream->props.endpoint));

	if (stream->complete == NULL) {
		FUNC0("there is no data callback - this doesn't make sense.");
		return -EINVAL;
	}

	switch (stream->props.type) {
		case USB_BULK:
			return FUNC2(stream);
		case USB_ISOC:
			return FUNC4(stream);
		default:
			FUNC0("unknown URB-type for data transfer.");
			return -EINVAL;
	}
}