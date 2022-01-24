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
struct sas_work {int /*<<< orphan*/  work; int /*<<< orphan*/  drain_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  shost; } ;
struct sas_ha_struct {TYPE_1__ core; int /*<<< orphan*/  defer_q; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_HA_DRAINING ; 
 int /*<<< orphan*/  SAS_HA_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct sas_ha_struct *ha, struct sas_work *sw)
{
	if (!FUNC3(SAS_HA_REGISTERED, &ha->state))
		return;

	if (FUNC3(SAS_HA_DRAINING, &ha->state)) {
		/* add it to the defer list, if not already pending */
		if (FUNC1(&sw->drain_node))
			FUNC0(&sw->drain_node, &ha->defer_q);
	} else
		FUNC2(ha->core.shost, &sw->work);
}