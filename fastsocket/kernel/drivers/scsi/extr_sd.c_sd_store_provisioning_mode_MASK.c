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
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t EACCES ; 
 size_t EINVAL ; 
 size_t SD_LBP_DISABLE ; 
 size_t SD_LBP_UNMAP ; 
 size_t SD_LBP_WS10 ; 
 size_t SD_LBP_WS16 ; 
 size_t SD_LBP_ZERO ; 
 scalar_t__ TYPE_DISK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lbp_mode ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_disk*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int) ; 
 struct scsi_disk* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct scsi_disk *sdkp = FUNC3(dev);
	struct scsi_device *sdp = sdkp->device;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (sdp->type != TYPE_DISK)
		return -EINVAL;

	if (!FUNC2(buf, lbp_mode[SD_LBP_UNMAP], 20))
		FUNC1(sdkp, SD_LBP_UNMAP);
	else if (!FUNC2(buf, lbp_mode[SD_LBP_WS16], 20))
		FUNC1(sdkp, SD_LBP_WS16);
	else if (!FUNC2(buf, lbp_mode[SD_LBP_WS10], 20))
		FUNC1(sdkp, SD_LBP_WS10);
	else if (!FUNC2(buf, lbp_mode[SD_LBP_ZERO], 20))
		FUNC1(sdkp, SD_LBP_ZERO);
	else if (!FUNC2(buf, lbp_mode[SD_LBP_DISABLE], 20))
		FUNC1(sdkp, SD_LBP_DISABLE);
	else
		return -EINVAL;

	return count;
}