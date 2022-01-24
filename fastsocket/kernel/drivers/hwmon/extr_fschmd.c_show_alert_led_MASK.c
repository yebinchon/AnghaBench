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
struct fschmd_data {int global_control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FSCHMD_CONTROL_ALERT_LED ; 
 struct fschmd_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
	struct device_attribute *devattr, char *buf)
{
	struct fschmd_data *data = FUNC0(dev);

	if (data->global_control & FSCHMD_CONTROL_ALERT_LED)
		return FUNC1(buf, "1\n");
	else
		return FUNC1(buf, "0\n");
}