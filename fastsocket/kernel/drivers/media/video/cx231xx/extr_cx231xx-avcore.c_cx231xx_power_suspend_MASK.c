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
typedef  int u32 ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWR_CTL_EN ; 
 int PWR_MODE_MASK ; 
 int /*<<< orphan*/  VRT_GET_REGISTER ; 
 int /*<<< orphan*/  VRT_SET_REGISTER ; 
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 

int FUNC2(struct cx231xx *dev)
{
	u8 value[4] = { 0, 0, 0, 0 };
	u32 tmp = 0;
	int status = 0;

	status = FUNC0(dev, VRT_GET_REGISTER, PWR_CTL_EN,
				       value, 4);
	if (status > 0)
		return status;

	tmp = *((u32 *) value);
	tmp &= (~PWR_MODE_MASK);

	value[0] = (u8) tmp;
	value[1] = (u8) (tmp >> 8);
	value[2] = (u8) (tmp >> 16);
	value[3] = (u8) (tmp >> 24);
	status = FUNC1(dev, VRT_SET_REGISTER, PWR_CTL_EN,
					value, 4);

	return status;
}