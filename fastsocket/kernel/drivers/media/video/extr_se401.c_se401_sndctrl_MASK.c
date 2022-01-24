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
struct usb_se401 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,int,unsigned short,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int set, struct usb_se401 *se401, unsigned short req,
			 unsigned short value, unsigned char *cp, int size)
{
	return FUNC0(
		se401->dev,
		set ? FUNC2(se401->dev, 0) : FUNC1(se401->dev, 0),
		req,
		(set ? USB_DIR_OUT : USB_DIR_IN) | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
		value,
		0,
		cp,
		size,
		1000
	);
}