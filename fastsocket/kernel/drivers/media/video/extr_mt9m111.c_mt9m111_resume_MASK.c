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
struct soc_camera_device {int dummy; } ;
struct mt9m111 {scalar_t__ powered; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mt9m111* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_camera_device*) ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd)
{
	struct i2c_client *client = FUNC3(FUNC5(icd));
	struct mt9m111 *mt9m111 = FUNC4(client);
	int ret = 0;

	if (mt9m111->powered) {
		ret = FUNC0(client);
		if (!ret)
			ret = FUNC1(client);
		if (!ret)
			ret = FUNC2(client);
	}
	return ret;
}