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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RX8025_ADJ_RESOLUTION ; 
 int /*<<< orphan*/  RX8025_REG_DIGOFF ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 struct i2c_client* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, int *adj)
{
	struct i2c_client *client = FUNC1(dev);
	u8 digoff;
	int err;

	err = FUNC0(client, RX8025_REG_DIGOFF, &digoff);
	if (err)
		return err;

	*adj = digoff >= 64 ? digoff - 128 : digoff;
	if (*adj > 0)
		(*adj)--;
	*adj *= -RX8025_ADJ_RESOLUTION;

	return 0;
}