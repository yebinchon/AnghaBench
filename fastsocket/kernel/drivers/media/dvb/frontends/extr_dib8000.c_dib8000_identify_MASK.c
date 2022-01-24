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
struct i2c_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static u16 FUNC2(struct i2c_device *client)
{
	u16 value;

	//because of glitches sometimes
	value = FUNC0(client, 896);

	if ((value = FUNC0(client, 896)) != 0x01b3) {
		FUNC1("wrong Vendor ID (read=0x%x)", value);
		return 0;
	}

	value = FUNC0(client, 897);
	if (value != 0x8000 && value != 0x8001 && value != 0x8002) {
		FUNC1("wrong Device ID (%x)", value);
		return 0;
	}

	switch (value) {
	case 0x8000:
		FUNC1("found DiB8000A");
		break;
	case 0x8001:
		FUNC1("found DiB8000B");
		break;
	case 0x8002:
		FUNC1("found DiB8000C");
		break;
	}
	return value;
}