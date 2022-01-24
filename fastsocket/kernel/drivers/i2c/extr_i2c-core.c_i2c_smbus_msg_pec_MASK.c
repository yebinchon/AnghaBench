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
struct i2c_msg {int addr; int flags; int* buf; int len; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int FUNC0 (int,int*,int) ; 

__attribute__((used)) static u8 FUNC1(u8 pec, struct i2c_msg *msg)
{
	/* The address will be sent first */
	u8 addr = (msg->addr << 1) | !!(msg->flags & I2C_M_RD);
	pec = FUNC0(pec, &addr, 1);

	/* The data buffer follows */
	return FUNC0(pec, msg->buf, msg->len);
}