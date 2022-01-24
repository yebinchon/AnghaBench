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
struct sas_ha_struct {TYPE_1__* ha_events; int /*<<< orphan*/  pending; } ;
typedef  enum ha_event { ____Placeholder_ha_event } ha_event ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HA_NUM_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sas_ha_struct*) ; 

__attribute__((used)) static void FUNC2(struct sas_ha_struct *sas_ha, enum ha_event event)
{
	FUNC0(event >= HA_NUM_EVENTS);

	FUNC1(event, &sas_ha->pending,
			&sas_ha->ha_events[event].work, sas_ha);
}