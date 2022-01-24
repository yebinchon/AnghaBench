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
struct sas_ha_struct {int num_phys; struct asd_sas_phy** sas_phy; int /*<<< orphan*/  state; } ;
struct asd_sas_phy {scalar_t__ frame_rcvd_size; scalar_t__ phy_events_pending; scalar_t__ port_events_pending; int /*<<< orphan*/  attached_sas_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int /*<<< orphan*/  SAS_HA_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct sas_ha_struct *ha)
{
	int i;

	FUNC1(SAS_HA_REGISTERED, &ha->state);

	/* clear out any stale link events/data from the suspension path */
	for (i = 0; i < ha->num_phys; i++) {
		struct asd_sas_phy *phy = ha->sas_phy[i];

		FUNC0(phy->attached_sas_addr, 0, SAS_ADDR_SIZE);
		phy->port_events_pending = 0;
		phy->phy_events_pending = 0;
		phy->frame_rcvd_size = 0;
	}
}