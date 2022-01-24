#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* owner; void* mode; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  show; TYPE_1__ attr; } ;
struct sensor_device_attribute {int index; TYPE_2__ dev_attr; } ;
struct s3c_hwmon_chcfg {scalar_t__ name; } ;
struct s3c_hwmon_attr {struct sensor_device_attribute in; int /*<<< orphan*/  label_name; struct sensor_device_attribute label; int /*<<< orphan*/  in_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* S_IRUGO ; 
 void* THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  s3c_hwmon_ch_show ; 
 int /*<<< orphan*/  s3c_hwmon_label_show ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				 struct s3c_hwmon_chcfg *cfg,
				 struct s3c_hwmon_attr *attrs,
				 int channel)
{
	struct sensor_device_attribute *attr;
	int ret;

	FUNC3(attrs->in_name, sizeof(attrs->in_name), "in%d_input", channel);

	attr = &attrs->in;
	attr->index = channel;
	attr->dev_attr.attr.name  = attrs->in_name;
	attr->dev_attr.attr.mode  = S_IRUGO;
	attr->dev_attr.attr.owner = THIS_MODULE;
	attr->dev_attr.show = s3c_hwmon_ch_show;

	ret =  FUNC1(dev, &attr->dev_attr);
	if (ret < 0) {
		FUNC0(dev, "failed to create input attribute\n");
		return ret;
	}

	/* if this has a name, add a label */
	if (cfg->name) {
		FUNC3(attrs->label_name, sizeof(attrs->label_name),
			 "in%d_label", channel);

		attr = &attrs->label;
		attr->index = channel;
		attr->dev_attr.attr.name  = attrs->label_name;
		attr->dev_attr.attr.mode  = S_IRUGO;
		attr->dev_attr.attr.owner = THIS_MODULE;
		attr->dev_attr.show = s3c_hwmon_label_show;

		ret = FUNC1(dev, &attr->dev_attr);
		if (ret < 0) {
			FUNC2(dev, &attrs->in.dev_attr);
			FUNC0(dev, "failed to create label attribute\n");
		}
	}

	return ret;
}