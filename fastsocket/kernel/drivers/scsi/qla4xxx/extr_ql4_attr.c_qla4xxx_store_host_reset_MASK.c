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
struct scsi_qla_host {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char*) ; 
 struct scsi_qla_host* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct scsi_qla_host *ha = FUNC4(FUNC0(dev));
	int ret = -EINVAL;
	char str[10];
	int type;

	FUNC3(buf, "%s", str);
	type = FUNC1(str);

	if (!type)
		goto exit_store_host_reset;

	ret = FUNC2(ha, type);

exit_store_host_reset:
	if (ret == 0)
		ret = count;
	return ret;
}