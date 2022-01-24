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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {char* ChipName; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ manu_pg0; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct MPT2SAS_ADAPTER* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *cdev, struct device_attribute *attr,
    char *buf)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT2SAS_ADAPTER *ioc = FUNC1(shost);

	return FUNC2(buf, 16, "%s\n", ioc->manu_pg0.ChipName);
}