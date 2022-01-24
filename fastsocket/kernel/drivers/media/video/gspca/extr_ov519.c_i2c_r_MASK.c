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
typedef  size_t u8 ;
struct sd {int* sensor_reg_cache; int bridge; } ;

/* Variables and functions */
#define  BRIDGE_OV511 134 
#define  BRIDGE_OV511PLUS 133 
#define  BRIDGE_OV518 132 
#define  BRIDGE_OV518PLUS 131 
#define  BRIDGE_OV519 130 
#define  BRIDGE_OVFX2 129 
#define  BRIDGE_W9968CF 128 
 int FUNC0 (struct sd*,size_t) ; 
 int FUNC1 (struct sd*,size_t) ; 
 int FUNC2 (struct sd*,size_t) ; 
 int FUNC3 (struct sd*,size_t) ; 

__attribute__((used)) static int FUNC4(struct sd *sd, u8 reg)
{
	int ret = -1;

	if (sd->sensor_reg_cache[reg] != -1)
		return sd->sensor_reg_cache[reg];

	switch (sd->bridge) {
	case BRIDGE_OV511:
	case BRIDGE_OV511PLUS:
		ret = FUNC0(sd, reg);
		break;
	case BRIDGE_OV518:
	case BRIDGE_OV518PLUS:
	case BRIDGE_OV519:
		ret = FUNC1(sd, reg);
		break;
	case BRIDGE_OVFX2:
		ret = FUNC2(sd, reg);
		break;
	case BRIDGE_W9968CF:
		ret = FUNC3(sd, reg);
		break;
	}

	if (ret >= 0)
		sd->sensor_reg_cache[reg] = ret;

	return ret;
}