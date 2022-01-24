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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_oled_dev {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_oled_dev*,int) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct asus_oled_dev *odev =
		(struct asus_oled_dev *) FUNC0(device);

	int temp = FUNC2(buf, 10, NULL);

	FUNC1(odev, temp);

	return count;
}