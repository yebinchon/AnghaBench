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
typedef  int /*<<< orphan*/  u32 ;
struct usb_ov511 {int /*<<< orphan*/  cbuf_lock; scalar_t__ cbuf; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char,int /*<<< orphan*/ ,int) ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  urb_errlist ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct usb_ov511 *ov, unsigned char reg, u32 val, int n)
{
	int rc;

	FUNC0(5, "0x%02X:%7d, n=%d", reg, val, n);

	FUNC3(&ov->cbuf_lock);

	*((__le32 *)ov->cbuf) = FUNC1(val);

	rc = FUNC6(ov->dev,
			     FUNC7(ov->dev, 0),
			     1 /* REG_IO */,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			     0, (__u16)reg, ov->cbuf, n, 1000);
	FUNC4(&ov->cbuf_lock);

	if (rc < 0)
		FUNC2("reg write multiple: error %d: %s", rc,
		    FUNC5(urb_errlist, rc));

	return rc;
}