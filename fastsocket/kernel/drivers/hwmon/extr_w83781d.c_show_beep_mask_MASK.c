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
struct w83781d_data {int /*<<< orphan*/  type; int /*<<< orphan*/  beep_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 
 struct w83781d_data* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3 (struct device *dev, struct device_attribute *attr, char *buf)
{
	struct w83781d_data *data = FUNC2(dev);
	return FUNC1(buf, "%ld\n",
		       (long)FUNC0(data->beep_mask, data->type));
}