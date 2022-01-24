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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d,
			  u8 cmd, u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
	int wo = (rbuf == NULL || rlen == 0); /* write-only */
	u8 sndbuf[1+wlen];
	FUNC3(sndbuf, 0, 1+wlen);

	sndbuf[0] = cmd;
	FUNC2(&sndbuf[1], wbuf, wlen);
	if (wo)
		return FUNC1(d, sndbuf, 1+wlen);
	else
		return FUNC0(d, sndbuf, 1+wlen, rbuf, rlen, 0);
}