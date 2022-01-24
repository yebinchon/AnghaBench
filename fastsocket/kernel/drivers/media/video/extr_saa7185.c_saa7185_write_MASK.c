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
struct v4l2_subdev {int dummy; } ;
struct saa7185 {size_t* reg; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,size_t,size_t) ; 
 struct saa7185* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,size_t,size_t) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, u8 reg, u8 value)
{
	struct i2c_client *client = FUNC3(sd);
	struct saa7185 *encoder = FUNC1(sd);

	FUNC2(1, debug, sd, "%02x set to %02x\n", reg, value);
	encoder->reg[reg] = value;
	return FUNC0(client, reg, value);
}