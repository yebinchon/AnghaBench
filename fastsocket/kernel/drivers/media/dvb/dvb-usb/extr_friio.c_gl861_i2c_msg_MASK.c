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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int demod_address; } ;

/* Variables and functions */
 int EINVAL ; 
 int GL861_READ ; 
 int GL861_REQ_I2C_READ ; 
 int GL861_REQ_I2C_WRITE ; 
 int GL861_WRITE ; 
 int JDVBT90502_2ND_I2C_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__ friio_fe_config ; 
 int FUNC1 (struct dvb_usb_device*,int,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int,int,int,int*,int,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_device *d, u8 addr,
			 u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
	u16 index;
	u16 value = addr << (8 + 1);
	int wo = (rbuf == NULL || rlen == 0);	/* write-only */
	u8 req, type;
	unsigned int pipe;

	/* special case for the indirect I2C access to the PLL via FE, */
	if (addr == friio_fe_config.demod_address &&
	    wbuf[0] == JDVBT90502_2ND_I2C_REG)
		return FUNC1(d, addr, wbuf, wlen, rbuf, rlen);

	if (wo) {
		req = GL861_REQ_I2C_WRITE;
		type = GL861_WRITE;
		pipe = FUNC5(d->udev, 0);
	} else {		/* rw */
		req = GL861_REQ_I2C_READ;
		type = GL861_READ;
		pipe = FUNC4(d->udev, 0);
	}

	switch (wlen) {
	case 1:
		index = wbuf[0];
		break;
	case 2:
		index = wbuf[0];
		value = value + wbuf[1];
		break;
	case 3:
		/* special case for 16bit register-address */
		index = (wbuf[2] << 8) | wbuf[0];
		value = value + wbuf[1];
		break;
	default:
		FUNC0("wlen = %x, aborting.", wlen);
		return -EINVAL;
	}
	FUNC2(1);
	return FUNC3(d->udev, pipe, req, type,
			       value, index, rbuf, rlen, 2000);
}