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
typedef  scalar_t__ u8 ;
struct si4713_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sd; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SI4713_CMD_GET_REV ; 
 int SI4713_GETREV_NRESP ; 
 scalar_t__ SI4713_PRODUCT_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct si4713_device *sdev)
{
	struct i2c_client *client = FUNC5(&sdev->sd);
	int rval;
	u8 resp[SI4713_GETREV_NRESP];

	FUNC1(&sdev->mutex);

	rval = FUNC3(sdev, SI4713_CMD_GET_REV,
					NULL, 0,
					resp, FUNC0(resp),
					DEFAULT_TIMEOUT);

	if (rval < 0)
		goto unlock;

	if (resp[1] == SI4713_PRODUCT_NUMBER) {
		FUNC6(&sdev->sd, "chip found @ 0x%02x (%s)\n",
				client->addr << 1, client->adapter->name);
	} else {
		FUNC4(&sdev->sd, "Invalid product number\n");
		rval = -EINVAL;
	}

unlock:
	FUNC2(&sdev->mutex);
	return rval;
}