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
struct transport_container {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {TYPE_1__ dev; } ;
struct sas_internal {TYPE_2__* f; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* phy_setup ) (struct sas_phy*) ;} ;

/* Variables and functions */
 struct sas_phy* FUNC0 (struct device*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sas_phy*) ; 
 struct sas_internal* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct transport_container *tc, struct device *dev,
			 struct device *cdev)
{
	struct sas_phy *phy = FUNC0(dev);
	struct Scsi_Host *shost = FUNC1(phy->dev.parent);
	struct sas_internal *i = FUNC3(shost->transportt);

	if (i->f->phy_setup)
		i->f->phy_setup(phy);

	return 0;
}