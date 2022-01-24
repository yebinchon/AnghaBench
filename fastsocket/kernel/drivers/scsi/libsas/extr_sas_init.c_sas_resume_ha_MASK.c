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
struct TYPE_4__ {int /*<<< orphan*/  shost; } ;
struct sas_ha_struct {int num_phys; TYPE_2__ core; struct asd_sas_phy** sas_phy; int /*<<< orphan*/  eh_wait_q; int /*<<< orphan*/  dev; } ;
struct asd_sas_phy {TYPE_1__* phy; scalar_t__ suspended; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHYE_RESUME_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_sas_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,unsigned long const) ; 

void FUNC8(struct sas_ha_struct *ha)
{
	const unsigned long tmo = FUNC2(25000);
	int i;

	/* deform ports on phys that did not resume
	 * at this point we may be racing the phy coming back (as posted
	 * by the lldd).  So we post the event and once we are in the
	 * libsas context check that the phy remains suspended before
	 * tearing it down.
	 */
	i = FUNC3(ha);
	if (i)
		FUNC0(ha->dev, "waiting up to 25 seconds for %d phy%s to resume\n",
			 i, i > 1 ? "s" : "");
	FUNC7(ha->eh_wait_q, FUNC3(ha) == 0, tmo);
	for (i = 0; i < ha->num_phys; i++) {
		struct asd_sas_phy *phy = ha->sas_phy[i];

		if (phy->suspended) {
			FUNC1(&phy->phy->dev, "resume timeout\n");
			FUNC5(phy, PHYE_RESUME_TIMEOUT);
		}
	}

	/* all phys are back up or timed out, turn on i/o so we can
	 * flush out disks that did not return
	 */
	FUNC6(ha->core.shost);
	FUNC4(ha);
}