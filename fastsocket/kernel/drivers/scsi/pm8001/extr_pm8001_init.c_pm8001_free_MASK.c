#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* region; } ;
struct pm8001_hba_info {struct pm8001_hba_info* tags; scalar_t__ shost; TYPE_2__ memoryMap; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* chip_iounmap ) (struct pm8001_hba_info*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  phys_addr; int /*<<< orphan*/ * virt_ptr; scalar_t__ alignment; scalar_t__ total_len; } ;

/* Variables and functions */
 TYPE_3__* PM8001_CHIP_DISP ; 
 int USI_MAX_MEMCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm8001_wq ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pm8001_hba_info*) ; 

__attribute__((used)) static void FUNC5(struct pm8001_hba_info *pm8001_ha)
{
	int i;

	if (!pm8001_ha)
		return;

	for (i = 0; i < USI_MAX_MEMCNT; i++) {
		if (pm8001_ha->memoryMap.region[i].virt_ptr != NULL) {
			FUNC2(pm8001_ha->pdev,
				(pm8001_ha->memoryMap.region[i].total_len +
				pm8001_ha->memoryMap.region[i].alignment),
				pm8001_ha->memoryMap.region[i].virt_ptr,
				pm8001_ha->memoryMap.region[i].phys_addr);
			}
	}
	PM8001_CHIP_DISP->chip_iounmap(pm8001_ha);
	if (pm8001_ha->shost)
		FUNC3(pm8001_ha->shost);
	FUNC0(pm8001_wq);
	FUNC1(pm8001_ha->tags);
	FUNC1(pm8001_ha);
}