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
 int FUNC1 (struct i2c_client*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,unsigned char,...) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, unsigned char addr)
{
	struct i2c_client *c = FUNC4(sd);
	unsigned char buffer[1];
	int rc;

	buffer[0] = addr;
	if (1 != (rc = FUNC1(c, buffer, 1)))
		FUNC3(0, debug, sd, "i2c i/o error: rc == %d (should be 1)\n", rc);

	FUNC2(10);

	if (1 != (rc = FUNC0(c, buffer, 1)))
		FUNC3(0, debug, sd, "i2c i/o error: rc == %d (should be 1)\n", rc);

	FUNC3(2, debug, sd, "tvp5150: read 0x%02x = 0x%02x\n", addr, buffer[0]);

	return (buffer[0]);
}