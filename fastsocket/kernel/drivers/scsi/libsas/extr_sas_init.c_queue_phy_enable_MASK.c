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
struct sas_phy_data {int enable_result; int enable; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  enable_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct sas_phy {struct sas_phy_data* hostdata; TYPE_1__ dev; } ;
struct sas_ha_struct {int /*<<< orphan*/  lock; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct sas_ha_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sas_phy *phy, int enable)
{
	struct Scsi_Host *shost = FUNC1(phy->dev.parent);
	struct sas_ha_struct *ha = FUNC0(shost);
	struct sas_phy_data *d = phy->hostdata;
	int rc;

	if (!d)
		return -ENOMEM;

	/* libsas workqueue coordinates ata-eh reset with discovery */
	FUNC2(&d->event_lock);
	d->enable_result = 0;
	d->enable = enable;

	FUNC6(&ha->lock);
	FUNC5(ha, &d->enable_work);
	FUNC7(&ha->lock);

	rc = FUNC4(ha);
	if (rc == 0)
		rc = d->enable_result;
	FUNC3(&d->event_lock);

	return rc;
}