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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {int enabled; TYPE_1__ dev; } ;
struct sas_internal {TYPE_2__* f; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int (* phy_reset ) (struct sas_phy*,int) ;} ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sas_phy*,int) ; 
 struct sas_internal* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sas_phy* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, size_t count, int hard_reset)
{
	struct sas_phy *phy = FUNC3(dev);
	struct Scsi_Host *shost = FUNC0(phy->dev.parent);
	struct sas_internal *i = FUNC2(shost->transportt);
	int error;

	error = i->f->phy_reset(phy, hard_reset);
	if (error)
		return error;
	phy->enabled = 1;
	return count;
}