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
struct ibmvscsi_host_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct ibmvscsi_host_data*,char*,int /*<<< orphan*/ ) ; 
 struct ibmvscsi_host_data* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct ibmvscsi_host_data *hostdata = FUNC2(shost);

	/* returns null-terminated host config data */
	if (FUNC1(hostdata, buf, PAGE_SIZE) == 0)
		return FUNC3(buf);
	else
		return 0;
}