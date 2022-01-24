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
struct usb_ov511 {scalar_t__ bclass; int* cbuf; int /*<<< orphan*/  cbuf_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 scalar_t__ BCL_OV518 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char,int) ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  urb_errlist ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct usb_ov511 *ov, unsigned char reg)
{
	int rc;

	FUNC2(&ov->cbuf_lock);
	rc = FUNC5(ov->dev,
			     FUNC6(ov->dev, 0),
			     (ov->bclass == BCL_OV518)?1:3 /* REG_IO */,
			     USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			     0, (__u16)reg, &ov->cbuf[0], 1, 1000);

	if (rc < 0) {
		FUNC1("reg read: error %d: %s", rc, FUNC4(urb_errlist, rc));
	} else {
		rc = ov->cbuf[0];
		FUNC0(5, "0x%02X:0x%02X", reg, ov->cbuf[0]);
	}

	FUNC3(&ov->cbuf_lock);

	return rc;
}