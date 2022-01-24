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
struct dme1737_data {long vrm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct dme1737_data* FUNC0 (struct device*) ; 
 long FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct dme1737_data *data = FUNC0(dev);
	long val = FUNC1(buf, NULL, 10);

	data->vrm = val;
	return count;
}