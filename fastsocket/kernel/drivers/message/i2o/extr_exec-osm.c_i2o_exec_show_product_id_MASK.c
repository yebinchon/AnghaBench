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
typedef  int /*<<< orphan*/  u16 ;
struct i2o_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2o_device*,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 struct i2o_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d,
					struct device_attribute *attr,
					char *buf)
{
	struct i2o_device *dev = FUNC4(d);
	u16 id;

	if (!FUNC0(dev, 0x0000, 1, &id, 2)) {
		FUNC2(buf, "0x%04x", FUNC1(id));
		return FUNC3(buf) + 1;
	}

	return 0;
}