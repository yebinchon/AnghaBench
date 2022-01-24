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
typedef  int u16 ;
struct zc0301_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct zc0301_device*,int) ; 
 scalar_t__ FUNC4 (struct zc0301_device*,int,int) ; 

int FUNC5(struct zc0301_device* cam, u16 address, u16 value)
{
	int err = 0, res;

	err += FUNC4(cam, 0x0092, address);
	err += FUNC4(cam, 0x0093, value & 0xff);
	err += FUNC4(cam, 0x0094, value >> 8);
	err += FUNC4(cam, 0x0090, 0x01);

	FUNC2(1);

	res = FUNC3(cam, 0x0091);
	if (res < 0)
		err += res;

	if (err)
		FUNC0(3, "I2C write failed at address 0x%04X, value: 0x%04X",
		    address, value);

	FUNC1("I2C write: address 0x%04X, value: 0x%04X", address, value);

	return err ? -1 : 0;
}