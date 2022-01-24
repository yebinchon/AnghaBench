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
struct ctlr_info {int commands_outstanding; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct ctlr_info* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	     struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct ctlr_info *h = FUNC1(shost);

	return FUNC2(buf, 20, "%d\n", h->commands_outstanding);
}