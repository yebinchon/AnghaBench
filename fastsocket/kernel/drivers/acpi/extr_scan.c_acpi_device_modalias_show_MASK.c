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
struct acpi_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct acpi_device*,char*,int) ; 
 struct acpi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr, char *buf) {
	struct acpi_device *acpi_dev = FUNC1(dev);
	int len;

	/* Device has no HID and no CID or string is >1024 */
	len = FUNC0(acpi_dev, buf, 1024);
	if (len <= 0)
		return 0;
	buf[len++] = '\n';
	return len;
}