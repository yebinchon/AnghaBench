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
typedef  int u32 ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_MODE_SET ; 
 int /*<<< orphan*/  VRT_GET_REGISTER ; 
 int /*<<< orphan*/  VRT_SET_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC3(struct cx231xx *dev, u32 ep_mask)
{
	u8 value[4] = { 0x0, 0x0, 0x0, 0x0 };
	u32 tmp = 0;
	int status = 0;

	FUNC0("cx231xx_stop_stream():: ep_mask = %x\n", ep_mask);
	status =
	    FUNC1(dev, VRT_GET_REGISTER, EP_MODE_SET, value, 4);
	if (status < 0)
		return status;

	tmp = *((u32 *) value);
	tmp &= (~ep_mask);
	value[0] = (u8) tmp;
	value[1] = (u8) (tmp >> 8);
	value[2] = (u8) (tmp >> 16);
	value[3] = (u8) (tmp >> 24);

	status = FUNC2(dev, VRT_SET_REGISTER, EP_MODE_SET,
					value, 4);

	return status;
}