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
struct v4l2_frequency {int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct tuner {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,struct tuner*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tuner* FUNC1 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
	struct tuner *t = FUNC1(sd);
	struct i2c_client *client = FUNC2(sd);

	if (FUNC0(client, t, f->type, f->frequency) == -EINVAL)
		return 0;

	return 0;
}