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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  BiosVersion; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ bios_pg3; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct MPT2SAS_ADAPTER* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *cdev, struct device_attribute *attr,
    char *buf)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT2SAS_ADAPTER *ioc = FUNC2(shost);

	u32 version = FUNC1(ioc->bios_pg3.BiosVersion);

	return FUNC3(buf, PAGE_SIZE, "%02d.%02d.%02d.%02d\n",
	    (version & 0xFF000000) >> 24,
	    (version & 0x00FF0000) >> 16,
	    (version & 0x0000FF00) >> 8,
	    version & 0x000000FF);
}