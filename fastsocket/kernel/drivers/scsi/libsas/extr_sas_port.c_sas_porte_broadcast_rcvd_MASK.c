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
typedef  int /*<<< orphan*/  u32 ;
struct work_struct {int dummy; } ;
struct asd_sas_phy {int /*<<< orphan*/  port; int /*<<< orphan*/  sas_prim_lock; int /*<<< orphan*/  sas_prim; int /*<<< orphan*/  port_events_pending; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCE_REVALIDATE_DOMAIN ; 
 int /*<<< orphan*/  PORTE_BROADCAST_RCVD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct asd_sas_event* FUNC5 (struct work_struct*) ; 

void FUNC6(struct work_struct *work)
{
	struct asd_sas_event *ev = FUNC5(work);
	struct asd_sas_phy *phy = ev->phy;
	unsigned long flags;
	u32 prim;

	FUNC1(PORTE_BROADCAST_RCVD, &phy->port_events_pending);

	FUNC3(&phy->sas_prim_lock, flags);
	prim = phy->sas_prim;
	FUNC4(&phy->sas_prim_lock, flags);

	FUNC0("broadcast received: %d\n", prim);
	FUNC2(phy->port, DISCE_REVALIDATE_DOMAIN);
}