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
struct sd {int dummy; } ;

/* Variables and functions */
 int MT9M111_CAMERA_CONTROL ; 
 int MT9M111_COLORPIPE ; 
 int /*<<< orphan*/  MT9M111_PAGE_MAP ; 
 int MT9M111_SENSOR_CORE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	u8 address, value[2] = {0x00, 0x00};

	FUNC0("Dumping the mt9m111 register state");

	FUNC0("Dumping the mt9m111 sensor core registers");
	value[1] = MT9M111_SENSOR_CORE;
	FUNC2(sd, MT9M111_PAGE_MAP, value, 2);
	for (address = 0; address < 0xff; address++) {
		FUNC1(sd, address, value, 2);
		FUNC0("register 0x%x contains 0x%x%x",
		     address, value[0], value[1]);
	}

	FUNC0("Dumping the mt9m111 color pipeline registers");
	value[1] = MT9M111_COLORPIPE;
	FUNC2(sd, MT9M111_PAGE_MAP, value, 2);
	for (address = 0; address < 0xff; address++) {
		FUNC1(sd, address, value, 2);
		FUNC0("register 0x%x contains 0x%x%x",
		     address, value[0], value[1]);
	}

	FUNC0("Dumping the mt9m111 camera control registers");
	value[1] = MT9M111_CAMERA_CONTROL;
	FUNC2(sd, MT9M111_PAGE_MAP, value, 2);
	for (address = 0; address < 0xff; address++) {
		FUNC1(sd, address, value, 2);
		FUNC0("register 0x%x contains 0x%x%x",
		     address, value[0], value[1]);
	}

	FUNC0("mt9m111 register state dump complete");
}