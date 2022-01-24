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
struct scsi_disk {unsigned int protection_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 unsigned int SD_DIF_TYPE3_PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 struct scsi_disk* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct scsi_disk *sdkp = FUNC2(dev);
	unsigned int val;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	val = FUNC1(buf, NULL, 10);

	if (val >= 0 && val <= SD_DIF_TYPE3_PROTECTION)
		sdkp->protection_type = val;

	return count;
}