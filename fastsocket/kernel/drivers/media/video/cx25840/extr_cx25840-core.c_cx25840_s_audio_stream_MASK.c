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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cx25840_debug ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 scalar_t__ FUNC2 (struct cx25840_state*) ; 
 scalar_t__ FUNC3 (struct cx25840_state*) ; 
 scalar_t__ FUNC4 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC5 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,char*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int enable)
{
	struct cx25840_state *state = FUNC5(sd);
	struct i2c_client *client = FUNC6(sd);
	u8 v;

	if (FUNC4(state) || FUNC3(state) || FUNC2(state))
		return 0;

	FUNC7(1, cx25840_debug, client, "%s audio output\n",
			enable ? "enable" : "disable");

	if (enable) {
		v = FUNC0(client, 0x115) | 0x80;
		FUNC1(client, 0x115, v);
		v = FUNC0(client, 0x116) | 0x03;
		FUNC1(client, 0x116, v);
	} else {
		v = FUNC0(client, 0x115) & ~(0x80);
		FUNC1(client, 0x115, v);
		v = FUNC0(client, 0x116) & ~(0x03);
		FUNC1(client, 0x116, v);
	}
	return 0;
}