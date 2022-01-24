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
struct platform_device {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int cmos; } ;

/* Variables and functions */
 TYPE_1__* UDP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct platform_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct platform_device *p = FUNC1(dev);
	int drive;

	drive = p->id;
	return FUNC0(buf, "%X\n", UDP->cmos);
}