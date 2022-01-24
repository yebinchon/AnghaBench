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
struct sas_ha_struct {int /*<<< orphan*/  (* notify_ha_event ) (struct sas_ha_struct*,int /*<<< orphan*/ ) ;} ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; struct sas_ha_struct sas_ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HAE_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sas_ha_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct asd_ha_struct *asd_ha)
{
	struct sas_ha_struct *sas_ha = &asd_ha->sas_ha;

	FUNC0("chip reset for %s\n", FUNC2(asd_ha->pcidev));
	FUNC1(asd_ha);
	sas_ha->notify_ha_event(sas_ha, HAE_RESET);
}