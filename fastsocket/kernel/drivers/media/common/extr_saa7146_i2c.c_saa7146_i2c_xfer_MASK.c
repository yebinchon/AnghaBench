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
struct v4l2_device {int dummy; } ;
struct saa7146_dev {int dummy; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/  retries; } ;

/* Variables and functions */
 struct v4l2_device* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct saa7146_dev*,struct i2c_msg*,int,int /*<<< orphan*/ ) ; 
 struct saa7146_dev* FUNC2 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter* adapter, struct i2c_msg *msg, int num)
{
	struct v4l2_device *v4l2_dev = FUNC0(adapter);
	struct saa7146_dev *dev = FUNC2(v4l2_dev);

	/* use helper function to transfer data */
	return FUNC1(dev, msg, num, adapter->retries);
}