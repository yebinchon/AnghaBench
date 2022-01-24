#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  shost; } ;
struct sas_ha_struct {int /*<<< orphan*/  lock; TYPE_3__ core; int /*<<< orphan*/  eh_dev_q; int /*<<< orphan*/  eh_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  reset_lun; int /*<<< orphan*/  eh_list_node; } ;
struct domain_device {TYPE_4__* rphy; TYPE_2__ ssp_dev; int /*<<< orphan*/  state; TYPE_1__* port; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct sas_ha_struct* ha; } ;

/* Variables and functions */
 int FAILED ; 
 int SAS_DEV_EH_PENDING ; 
 int SAS_DEV_LU_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct domain_device *dev, int reset_type, int lun, int wait)
{
	struct sas_ha_struct *ha = dev->port->ha;
	int scheduled = 0, tries = 100;

	/* ata: promote lun reset to bus reset */
	if (FUNC1(dev)) {
		FUNC5(dev);
		if (wait)
			FUNC6(dev);
		return SUCCESS;
	}

	while (!scheduled && tries--) {
		FUNC10(&ha->lock);
		if (!FUNC12(SAS_DEV_EH_PENDING, &dev->state) &&
		    !FUNC12(reset_type, &dev->state)) {
			scheduled = 1;
			ha->eh_active++;
			FUNC4(&dev->ssp_dev.eh_list_node, &ha->eh_dev_q);
			FUNC9(SAS_DEV_EH_PENDING, &dev->state);
			FUNC9(reset_type, &dev->state);
			FUNC3(lun, &dev->ssp_dev.reset_lun);
			FUNC8(ha->core.shost);
		}
		FUNC11(&ha->lock);

		if (wait)
			FUNC7(dev);

		if (scheduled)
			return SUCCESS;
	}

	FUNC0("%s reset of %s failed\n",
		    reset_type == SAS_DEV_LU_RESET ? "LUN" : "Bus",
		    FUNC2(&dev->rphy->dev));

	return FAILED;
}