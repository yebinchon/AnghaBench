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
struct work_struct {int dummy; } ;
struct asd_sas_phy {int /*<<< orphan*/  port_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORTE_TIMER_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_sas_phy*,int) ; 
 struct asd_sas_event* FUNC2 (struct work_struct*) ; 

void FUNC3(struct work_struct *work)
{
	struct asd_sas_event *ev = FUNC2(work);
	struct asd_sas_phy *phy = ev->phy;

	FUNC0(PORTE_TIMER_EVENT, &phy->port_events_pending);

	FUNC1(phy, 1);
}