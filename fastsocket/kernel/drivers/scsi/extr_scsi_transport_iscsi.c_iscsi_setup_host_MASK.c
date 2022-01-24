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
struct transport_container {int dummy; } ;
struct iscsi_cls_host {int /*<<< orphan*/  mutex; int /*<<< orphan*/  nr_scans; } ;
struct device {int dummy; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,struct iscsi_cls_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct transport_container *tc, struct device *dev,
			    struct device *cdev)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct iscsi_cls_host *ihost = shost->shost_data;

	FUNC3(ihost, 0, sizeof(*ihost));
	FUNC0(&ihost->nr_scans, 0);
	FUNC4(&ihost->mutex);

	FUNC2(shost, ihost);
	/* ignore any bsg add error - we just can't do sgio */

	return 0;
}