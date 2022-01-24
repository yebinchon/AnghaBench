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
struct timed_output_dev {int /*<<< orphan*/  (* enable ) (struct timed_output_dev*,int) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct timed_output_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct timed_output_dev*,int) ; 

__attribute__((used)) static ssize_t FUNC3(
		struct device *dev, struct device_attribute *attr,
		const char *buf, size_t size)
{
	struct timed_output_dev *tdev = FUNC0(dev);
	int value;

	FUNC1(buf, "%d", &value);
	tdev->enable(tdev, value);

	return size;
}