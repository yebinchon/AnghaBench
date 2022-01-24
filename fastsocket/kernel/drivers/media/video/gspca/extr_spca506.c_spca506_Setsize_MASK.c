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
struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, __u16 code,
			    __u16 xmult, __u16 ymult)
{
	struct usb_device *dev = gspca_dev->dev;

	FUNC0(D_STREAM, "** SetSize **");
	FUNC1(dev, 0x04, (0x18 | (code & 0x07)), 0x0000);
	/* Soft snap 0x40 Hard 0x41 */
	FUNC1(dev, 0x04, 0x41, 0x0001);
	FUNC1(dev, 0x04, 0x00, 0x0002);
	/* reserved */
	FUNC1(dev, 0x04, 0x00, 0x0003);

	/* reserved */
	FUNC1(dev, 0x04, 0x00, 0x0004);
	/* reserved */
	FUNC1(dev, 0x04, 0x01, 0x0005);
	/* reserced */
	FUNC1(dev, 0x04, xmult, 0x0006);
	/* reserved */
	FUNC1(dev, 0x04, ymult, 0x0007);
	/* compression 1 */
	FUNC1(dev, 0x04, 0x00, 0x0008);
	/* T=64 -> 2 */
	FUNC1(dev, 0x04, 0x00, 0x0009);
	/* threshold2D */
	FUNC1(dev, 0x04, 0x21, 0x000a);
	/* quantization */
	FUNC1(dev, 0x04, 0x00, 0x000b);
}