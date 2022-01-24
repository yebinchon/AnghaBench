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
struct TYPE_3__ {int /*<<< orphan*/  shost; } ;
struct TYPE_4__ {int /*<<< orphan*/  sas_port; int /*<<< orphan*/  sas_phy; TYPE_1__ core; } ;
struct asd_ha_struct {TYPE_2__ sas_ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct asd_ha_struct *asd_ha)
{
	int err;

	err = FUNC2(&asd_ha->sas_ha);

	FUNC1(asd_ha->sas_ha.core.shost);
	FUNC4(asd_ha->sas_ha.core.shost);
	FUNC3(asd_ha->sas_ha.core.shost);

	FUNC0(asd_ha->sas_ha.sas_phy);
	FUNC0(asd_ha->sas_ha.sas_port);

	return err;
}