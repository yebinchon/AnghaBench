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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_COUNT_KEY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *sysfsbuf)
{
	int ret;
	u8 buffer[4];
	u32 count;

	FUNC1(&applesmc_lock);

	ret = FUNC0(KEY_COUNT_KEY, buffer, 4);
	count = ((u32)buffer[0]<<24) + ((u32)buffer[1]<<16) +
						((u32)buffer[2]<<8) + buffer[3];

	FUNC2(&applesmc_lock);
	if (ret)
		return ret;
	else
		return FUNC3(sysfsbuf, PAGE_SIZE, "%d\n", count);
}