#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipr_ioa_cfg {unsigned long iopoll_weight; int nvectors; int hrrq_num; TYPE_2__* hrrq; scalar_t__ sis64; TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  iopoll; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ blk_iopoll_enabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ipr_iopoll ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC3(dev);
	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
	unsigned long user_iopoll_weight;
	unsigned long lock_flags = 0;
	int i;

	if (!ioa_cfg->sis64) {
		FUNC4(&ioa_cfg->pdev->dev, "blk-iopoll not supported on this adapter\n");
		return -EINVAL;
	}
	if (FUNC5(buf, 10, &user_iopoll_weight))
		return -EINVAL;

	if (user_iopoll_weight > 256) {
		FUNC4(&ioa_cfg->pdev->dev, "Invalid blk-iopoll weight. It must be less than 256\n");
		return -EINVAL;
	}

	if (user_iopoll_weight == ioa_cfg->iopoll_weight) {
		FUNC4(&ioa_cfg->pdev->dev, "Current blk-iopoll weight has the same weight\n");
		return FUNC8(buf);
	}

	if (blk_iopoll_enabled && ioa_cfg->iopoll_weight &&
			ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
		for (i = 1; i < ioa_cfg->hrrq_num; i++)
			FUNC0(&ioa_cfg->hrrq[i].iopoll);
	}

	FUNC6(shost->host_lock, lock_flags);
	ioa_cfg->iopoll_weight = user_iopoll_weight;
	if (blk_iopoll_enabled && ioa_cfg->iopoll_weight &&
			ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
		for (i = 1; i < ioa_cfg->hrrq_num; i++) {
			FUNC2(&ioa_cfg->hrrq[i].iopoll,
					ioa_cfg->iopoll_weight, ipr_iopoll);
			FUNC1(&ioa_cfg->hrrq[i].iopoll);
		}
	}
	FUNC7(shost->host_lock, lock_flags);

	return FUNC8(buf);
}