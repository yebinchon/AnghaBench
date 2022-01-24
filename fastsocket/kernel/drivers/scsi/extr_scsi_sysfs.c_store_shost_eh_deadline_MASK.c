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
struct Scsi_Host {int eh_deadline; int /*<<< orphan*/  host_lock; TYPE_1__* transportt; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ eh_strategy_handler; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int HZ ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (char const*,char*,int*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	int ret = -EINVAL;
	int eh_deadline;
	unsigned long flags;

	if (shost->transportt->eh_strategy_handler)
		return ret;

	if (FUNC4(buf, "%d\n", &eh_deadline) == 1) {
		FUNC2(shost->host_lock, flags);
		if (FUNC1(shost))
			ret = -EBUSY;
		else {
			shost->eh_deadline = eh_deadline * HZ;
			ret = count;
		}
		FUNC3(shost->host_lock, flags);
	}
	return ret;
}