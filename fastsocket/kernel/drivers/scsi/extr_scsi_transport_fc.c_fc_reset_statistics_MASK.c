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
struct fc_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset_fc_host_stats ) (struct Scsi_Host*) ;} ;

/* Variables and functions */
 size_t ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 struct fc_internal* FUNC1 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
		    const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC2(dev);
	struct fc_internal *i = FUNC1(shost->transportt);

	/* ignore any data value written to the attribute */
	if (i->f->reset_fc_host_stats) {
		i->f->reset_fc_host_stats(shost);
		return count;
	}

	return -ENOENT;
}