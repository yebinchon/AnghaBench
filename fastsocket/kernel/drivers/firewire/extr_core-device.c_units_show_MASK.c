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
struct fw_device {int /*<<< orphan*/ * config_rom; } ;
struct fw_csr_iterator {scalar_t__ p; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int CSR_DIRECTORY ; 
 int CSR_UNIT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_csr_iterator*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct fw_csr_iterator*,int*,int*) ; 
 struct fw_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  fw_device_rwsem ; 
 scalar_t__ FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			  struct device_attribute *attr, char *buf)
{
	struct fw_device *device = FUNC3(dev);
	struct fw_csr_iterator ci;
	int key, value, i = 0;

	FUNC0(&fw_device_rwsem);
	FUNC1(&ci, &device->config_rom[5]);
	while (FUNC2(&ci, &key, &value)) {
		if (key != (CSR_UNIT | CSR_DIRECTORY))
			continue;
		i += FUNC4(&buf[i], ci.p + value - 1);
		if (i >= PAGE_SIZE - (8 + 1 + 8 + 1))
			break;
	}
	FUNC5(&fw_device_rwsem);

	if (i)
		buf[i - 1] = '\n';

	return i;
}