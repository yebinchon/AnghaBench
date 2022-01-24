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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIBUSB_REQ_POLL_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,scalar_t__*,int,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,scalar_t__*,int /*<<< orphan*/ *,int*) ; 

int FUNC3(struct dvb_usb_device *d, u32 *event, int *state)
{
	u8 key[5],cmd = DIBUSB_REQ_POLL_REMOTE;
	FUNC1(d,&cmd,1,key,5,0);
	FUNC2(d,key,event,state);
	if (key[0] != 0)
		FUNC0("key: %x %x %x %x %x\n",key[0],key[1],key[2],key[3],key[4]);
	return 0;
}