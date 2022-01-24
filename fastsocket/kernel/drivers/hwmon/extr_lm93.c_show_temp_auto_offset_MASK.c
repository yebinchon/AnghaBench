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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {int /*<<< orphan*/ * offset; } ;
struct lm93_data {TYPE_1__ block10; int /*<<< orphan*/  sfc2; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct lm93_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct sensor_device_attribute_2 *s_attr = FUNC4(attr);
	int nr = s_attr->index;
	int ofs = s_attr->nr;
	struct lm93_data *data = FUNC2(dev);
	int mode = FUNC1(data->sfc2, nr);
	return FUNC3(buf,"%d\n",
	       FUNC0(data->block10.offset[ofs],
					      nr,mode));
}