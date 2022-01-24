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
struct Scsi_Host {int dummy; } ;
struct SL_WH_MASTER_TRIGGER_T {int dummy; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  diag_trigger_lock; int /*<<< orphan*/  diag_trigger_master; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 struct MPT3SAS_ADAPTER* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *cdev,
	struct device_attribute *attr, char *buf)

{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC2(shost);
	unsigned long flags;
	ssize_t rc;

	FUNC3(&ioc->diag_trigger_lock, flags);
	rc = sizeof(struct SL_WH_MASTER_TRIGGER_T);
	FUNC1(buf, &ioc->diag_trigger_master, rc);
	FUNC4(&ioc->diag_trigger_lock, flags);
	return rc;
}