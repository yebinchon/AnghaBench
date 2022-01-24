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
struct sensor_device_attribute {size_t index; } ;
struct s3c_hwmon_pdata {struct s3c_hwmon_chcfg** in; } ;
struct s3c_hwmon_chcfg {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {struct s3c_hwmon_pdata* platform_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct sensor_device_attribute* FUNC1 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	struct sensor_device_attribute *sen_attr = FUNC1(attr);
	struct s3c_hwmon_pdata *pdata = dev->platform_data;
	struct s3c_hwmon_chcfg *cfg;

	cfg = pdata->in[sen_attr->index];

	return FUNC0(buf, PAGE_SIZE, "%s\n", cfg->name);
}