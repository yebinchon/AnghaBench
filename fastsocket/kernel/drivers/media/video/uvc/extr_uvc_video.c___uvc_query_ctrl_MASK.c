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
struct uvc_device {int /*<<< orphan*/  udev; } ;
typedef  int __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int,int,int,int,void*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct uvc_device *dev, __u8 query, __u8 unit,
			__u8 intfnum, __u8 cs, void *data, __u16 size,
			int timeout)
{
	__u8 type = USB_TYPE_CLASS | USB_RECIP_INTERFACE;
	unsigned int pipe;

	pipe = (query & 0x80) ? FUNC1(dev->udev, 0)
			      : FUNC2(dev->udev, 0);
	type |= (query & 0x80) ? USB_DIR_IN : USB_DIR_OUT;

	return FUNC0(dev->udev, pipe, query, type, cs << 8,
			unit << 8 | intfnum, data, size, timeout);
}