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
struct work_struct {int dummy; } ;
struct asd_sas_phy {scalar_t__ suspended; scalar_t__ error; TYPE_1__* phy; int /*<<< orphan*/  phy_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHYE_RESUME_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_sas_phy*,int) ; 
 struct asd_sas_event* FUNC3 (struct work_struct*) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct asd_sas_event *ev = FUNC3(work);
	struct asd_sas_phy *phy = ev->phy;

	FUNC0(PHYE_RESUME_TIMEOUT, &phy->phy_events_pending);

	/* phew, lldd got the phy back in the nick of time */
	if (!phy->suspended) {
		FUNC1(&phy->phy->dev, "resume timeout cancelled\n");
		return;
	}

	phy->error = 0;
	phy->suspended = 0;
	FUNC2(phy, 1);
}