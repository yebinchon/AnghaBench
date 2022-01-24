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
typedef  scalar_t__ u16 ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EINVAL ; 
 int GL861_REQ_I2C_DATA_CTRL_WRITE ; 
 int GL861_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__,int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d, u8 addr,
				  u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
	u16 index = wbuf[0];	/* must be JDVBT90502_2ND_I2C_REG(=0xFE) */
	u16 value = addr << (8 + 1);
	int wo = (rbuf == NULL || rlen == 0);	/* write only */
	u8 req, type;

	FUNC0("write to PLL:0x%02x via FE reg:0x%02x, len:%d\n",
		 wbuf[1], wbuf[0], wlen - 1);

	if (wo && wlen >= 2) {
		req = GL861_REQ_I2C_DATA_CTRL_WRITE;
		type = GL861_WRITE;
		FUNC1(20);
		return FUNC2(d->udev, FUNC3(d->udev, 0),
				       req, type, value, index,
				       &wbuf[1], wlen - 1, 2000);
	}

	FUNC0("not supported ctrl-msg, aborting.");
	return -EINVAL;
}