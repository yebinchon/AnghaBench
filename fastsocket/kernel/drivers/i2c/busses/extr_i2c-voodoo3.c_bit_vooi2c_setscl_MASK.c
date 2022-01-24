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

/* Variables and functions */
 unsigned int I2C_SCL_OUT ; 
 scalar_t__ REG ; 
 scalar_t__ ioaddr ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void *data, int val)
{
	unsigned int r;
	r = FUNC0(ioaddr + REG);
	if (val)
		r |= I2C_SCL_OUT;
	else
		r &= ~I2C_SCL_OUT;
	FUNC1(r, ioaddr + REG);
	FUNC0(ioaddr + REG);	/* flush posted write */
}