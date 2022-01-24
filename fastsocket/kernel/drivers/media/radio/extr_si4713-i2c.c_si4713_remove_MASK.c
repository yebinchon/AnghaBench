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
struct si4713_device {scalar_t__ power_state; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct si4713_device*) ; 
 struct v4l2_subdev* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct si4713_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct si4713_device*,int /*<<< orphan*/ ) ; 
 struct si4713_device* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC1(client);
	struct si4713_device *sdev = FUNC4(sd);

	if (sdev->power_state)
		FUNC3(sdev, POWER_DOWN);

	if (client->irq > 0)
		FUNC0(client->irq, sdev);

	FUNC5(sd);

	FUNC2(sdev);

	return 0;
}