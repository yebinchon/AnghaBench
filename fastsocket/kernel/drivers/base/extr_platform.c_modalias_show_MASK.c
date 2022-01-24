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
struct platform_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int FUNC0 (char*,int,char*,char*) ; 
 struct platform_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *a,
			     char *buf)
{
	struct platform_device	*pdev = FUNC1(dev);
	int len = FUNC0(buf, PAGE_SIZE, "platform:%s\n", pdev->name);

	return (len >= PAGE_SIZE) ? (PAGE_SIZE - 1) : len;
}