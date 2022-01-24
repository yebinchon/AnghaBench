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
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,unsigned char) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,int,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, int subaddr, unsigned char val)
{
	struct i2c_client *client = FUNC2(sd);
	unsigned char buffer[2];

	FUNC1(1, debug, sd, "Writing %d 0x%x\n", subaddr, val);
	buffer[0] = subaddr;
	buffer[1] = val;
	if (2 != FUNC0(client, buffer, 2)) {
		FUNC3(sd, "I/O error, trying (write %d 0x%x)\n",
		       subaddr, val);
		return -1;
	}
	return 0;
}