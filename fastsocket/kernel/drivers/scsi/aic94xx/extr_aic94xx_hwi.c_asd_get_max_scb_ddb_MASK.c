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
struct TYPE_2__ {int max_scbs; int max_ddbs; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;

/* Variables and functions */
 int ASD_DDB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int ASD_SCB_SIZE ; 
 int FUNC1 (struct asd_ha_struct*) ; 
 int FUNC2 (struct asd_ha_struct*) ; 

__attribute__((used)) static void FUNC3(struct asd_ha_struct *asd_ha)
{
	asd_ha->hw_prof.max_scbs = FUNC1(asd_ha)/ASD_SCB_SIZE;
	asd_ha->hw_prof.max_ddbs = FUNC2(asd_ha)/ASD_DDB_SIZE;
	FUNC0("max_scbs:%d, max_ddbs:%d\n",
		    asd_ha->hw_prof.max_scbs,
		    asd_ha->hw_prof.max_ddbs);
}