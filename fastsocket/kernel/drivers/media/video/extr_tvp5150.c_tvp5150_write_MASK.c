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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,...) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static inline void FUNC3(struct v4l2_subdev *sd, unsigned char addr,
				 unsigned char value)
{
	struct i2c_client *c = FUNC2(sd);
	unsigned char buffer[2];
	int rc;

	buffer[0] = addr;
	buffer[1] = value;
	FUNC1(2, debug, sd, "tvp5150: writing 0x%02x 0x%02x\n", buffer[0], buffer[1]);
	if (2 != (rc = FUNC0(c, buffer, 2)))
		FUNC1(0, debug, sd, "i2c i/o error: rc == %d (should be 2)\n", rc);
}