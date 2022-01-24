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
typedef  int u32 ;
struct zfcp_unit {int /*<<< orphan*/  erp_counter; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ZFCP_SET ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,struct zfcp_unit*) ; 

void FUNC6(struct zfcp_unit *unit, char *id, void *ref,
				 u32 mask, int set_or_clear)
{
	if (set_or_clear == ZFCP_SET) {
		if (FUNC4(mask, &unit->status))
			FUNC5(id, ref, unit);
		FUNC2(mask, &unit->status);
	} else {
		if (FUNC3(mask, &unit->status))
			FUNC5(id, ref, unit);
		FUNC0(mask, &unit->status);
		if (mask & ZFCP_STATUS_COMMON_ERP_FAILED) {
			FUNC1(&unit->erp_counter, 0);
		}
	}
}