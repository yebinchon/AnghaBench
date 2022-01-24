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
struct fw_device {int config_rom_length; int /*<<< orphan*/  config_rom; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fw_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  fw_device_rwsem ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	struct fw_device *device = FUNC1(dev);
	size_t length;

	FUNC0(&fw_device_rwsem);
	length = device->config_rom_length * 4;
	FUNC2(buf, device->config_rom, length);
	FUNC3(&fw_device_rwsem);

	return length;
}