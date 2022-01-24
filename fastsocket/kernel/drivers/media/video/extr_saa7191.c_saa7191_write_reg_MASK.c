#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {size_t* reg; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,size_t,size_t) ; 
 TYPE_1__* FUNC1 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u8 reg, u8 value)
{
	struct i2c_client *client = FUNC2(sd);

	FUNC1(sd)->reg[reg] = value;
	return FUNC0(client, reg, value);
}