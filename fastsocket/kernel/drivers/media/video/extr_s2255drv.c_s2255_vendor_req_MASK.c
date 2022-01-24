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
typedef  int /*<<< orphan*/  u16 ;
struct s2255_dev {int /*<<< orphan*/  udev; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int HZ ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC3(struct s2255_dev *dev, unsigned char Request,
			     u16 Index, u16 Value, void *TransferBuffer,
			     s32 TransferBufferLength, int bOut)
{
	int r;
	if (!bOut) {
		r = FUNC0(dev->udev, FUNC1(dev->udev, 0),
				    Request,
				    USB_TYPE_VENDOR | USB_RECIP_DEVICE |
				    USB_DIR_IN,
				    Value, Index, TransferBuffer,
				    TransferBufferLength, HZ * 5);
	} else {
		r = FUNC0(dev->udev, FUNC2(dev->udev, 0),
				    Request, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				    Value, Index, TransferBuffer,
				    TransferBufferLength, HZ * 5);
	}
	return r;
}