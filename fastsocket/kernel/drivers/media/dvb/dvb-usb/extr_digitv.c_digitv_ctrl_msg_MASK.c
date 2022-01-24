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
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d,
		u8 cmd, u8 vv, u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
	int wo = (rbuf == NULL || rlen == 0); /* write-only */
	u8 sndbuf[7],rcvbuf[7];
	FUNC3(sndbuf,0,7); FUNC3(rcvbuf,0,7);

	sndbuf[0] = cmd;
	sndbuf[1] = vv;
	sndbuf[2] = wo ? wlen : rlen;

	if (wo) {
		FUNC2(&sndbuf[3],wbuf,wlen);
		FUNC1(d,sndbuf,7);
	} else {
		FUNC0(d,sndbuf,7,rcvbuf,7,10);
		FUNC2(rbuf,&rcvbuf[3],rlen);
	}
	return 0;
}