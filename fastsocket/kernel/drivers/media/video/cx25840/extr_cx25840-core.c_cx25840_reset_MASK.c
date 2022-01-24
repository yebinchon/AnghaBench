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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 scalar_t__ FUNC4 (struct cx25840_state*) ; 
 scalar_t__ FUNC5 (struct cx25840_state*) ; 
 scalar_t__ FUNC6 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC7 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd, u32 val)
{
	struct cx25840_state *state = FUNC7(sd);
	struct i2c_client *client = FUNC8(sd);

	if (FUNC6(state))
		FUNC2(client);
	else if (FUNC5(state))
		FUNC1(client);
	else if (FUNC4(state))
		FUNC0(client);
	else
		FUNC3(client);
	return 0;
}