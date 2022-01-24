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
struct sas_ha_struct {int /*<<< orphan*/  drain_mutex; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_HA_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct sas_ha_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct sas_ha_struct *ha)
{
	int err;

	err = FUNC1(&ha->drain_mutex);
	if (err)
		return err;
	if (FUNC3(SAS_HA_REGISTERED, &ha->state))
		FUNC0(ha);
	FUNC2(&ha->drain_mutex);

	return 0;
}