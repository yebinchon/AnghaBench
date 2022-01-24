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
struct lm70 {int chip; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
#define  LM70_CHIP_LM70 129 
#define  LM70_CHIP_TMP121 128 
 struct lm70* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute
			      *devattr, char *buf)
{
	struct lm70 *p_lm70 = FUNC0(dev);
	int ret;

	switch (p_lm70->chip) {
	case LM70_CHIP_LM70:
		ret = FUNC1(buf, "lm70\n");
		break;
	case LM70_CHIP_TMP121:
		ret = FUNC1(buf, "tmp121\n");
		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}