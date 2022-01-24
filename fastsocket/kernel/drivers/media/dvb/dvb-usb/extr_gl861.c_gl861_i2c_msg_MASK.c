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
typedef  int u16 ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EINVAL ; 
 int GL861_READ ; 
 int GL861_REQ_I2C_READ ; 
 int GL861_REQ_I2C_WRITE ; 
 int GL861_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d, u8 addr,
			 u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
	u16 index;
	u16 value = addr << (8 + 1);
	int wo = (rbuf == NULL || rlen == 0); /* write-only */
	u8 req, type;

	if (wo) {
		req = GL861_REQ_I2C_WRITE;
		type = GL861_WRITE;
	} else { /* rw */
		req = GL861_REQ_I2C_READ;
		type = GL861_READ;
	}

	switch (wlen) {
	case 1:
		index = wbuf[0];
		break;
	case 2:
		index = wbuf[0];
		value = value + wbuf[1];
		break;
	default:
		FUNC3("wlen = %x, aborting.", wlen);
		return -EINVAL;
	}

	FUNC0(1); /* avoid I2C errors */

	return FUNC1(d->udev, FUNC2(d->udev, 0), req, type,
			       value, index, rbuf, rlen, 2000);
}