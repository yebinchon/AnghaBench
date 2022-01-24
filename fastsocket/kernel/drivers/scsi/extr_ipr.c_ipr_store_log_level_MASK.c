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
struct ipr_ioa_cfg {TYPE_1__* host; int /*<<< orphan*/  log_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			           struct device_attribute *attr,
				   const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
	unsigned long lock_flags = 0;

	FUNC2(ioa_cfg->host->host_lock, lock_flags);
	ioa_cfg->log_level = FUNC1(buf, NULL, 10);
	FUNC3(ioa_cfg->host->host_lock, lock_flags);
	return FUNC4(buf);
}