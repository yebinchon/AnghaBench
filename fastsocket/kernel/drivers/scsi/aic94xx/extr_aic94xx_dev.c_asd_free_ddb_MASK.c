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
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct asd_ha_struct*) ; 
 int /*<<< orphan*/  DDB_TYPE ; 
 int /*<<< orphan*/  DDB_TYPE_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct asd_ha_struct *asd_ha, int ddb)
{
	if (!ddb || ddb >= 0xFFFF)
		return;
	FUNC1(asd_ha, ddb, DDB_TYPE, DDB_TYPE_UNUSED);
	FUNC0(ddb, asd_ha);
}