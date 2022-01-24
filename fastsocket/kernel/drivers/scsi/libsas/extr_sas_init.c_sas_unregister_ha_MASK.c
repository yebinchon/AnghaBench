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
struct sas_ha_struct {int lldd_max_execute_num; int /*<<< orphan*/  drain_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct sas_ha_struct*) ; 

int FUNC6(struct sas_ha_struct *sas_ha)
{
	FUNC3(sas_ha);
	FUNC5(sas_ha);

	/* flush unregistration work */
	FUNC1(&sas_ha->drain_mutex);
	FUNC0(sas_ha);
	FUNC2(&sas_ha->drain_mutex);

	if (sas_ha->lldd_max_execute_num > 1) {
		FUNC4(sas_ha);
		sas_ha->lldd_max_execute_num = 1;
	}

	return 0;
}