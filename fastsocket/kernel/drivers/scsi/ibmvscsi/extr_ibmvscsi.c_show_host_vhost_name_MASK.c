#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;
struct ibmvscsi_host_data {TYPE_1__ caps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct ibmvscsi_host_data* FUNC1 (struct Scsi_Host*) ; 
 int FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct ibmvscsi_host_data *hostdata = FUNC1(shost);
	int len;

	len = FUNC2(buf, sizeof(hostdata->caps.name), "%s\n",
		       hostdata->caps.name);
	return len;
}