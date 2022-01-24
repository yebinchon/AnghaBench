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
struct bcma_bus {int dummy; } ;

/* Variables and functions */
 int SCAN_ADDR_TYPE ; 
 int SCAN_ADDR_TYPE_BRIDGE ; 
 int SCAN_ER_TAGX ; 
 int SCAN_ER_TAG_ADDR ; 
 int SCAN_ER_VALID ; 
 int FUNC0 (struct bcma_bus*,int**) ; 
 int /*<<< orphan*/  FUNC1 (int**) ; 

__attribute__((used)) static bool FUNC2(struct bcma_bus *bus, u32 **eromptr)
{
	u32 ent = FUNC0(bus, eromptr);
	FUNC1(eromptr);
	return (((ent & SCAN_ER_VALID)) &&
		((ent & SCAN_ER_TAGX) == SCAN_ER_TAG_ADDR) &&
		((ent & SCAN_ADDR_TYPE) == SCAN_ADDR_TYPE_BRIDGE));
}