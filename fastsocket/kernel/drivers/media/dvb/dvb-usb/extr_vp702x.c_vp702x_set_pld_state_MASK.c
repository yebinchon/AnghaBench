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
struct dvb_usb_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_usb_adapter *adap, u8 state)
{
	u8 buf[16] = { 0 };
	return FUNC0(adap->dev, 0xe0, (state << 8) | 0x0f, 0, buf, 16);
}