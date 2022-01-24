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
struct pdc_system_map_addr_info {int /*<<< orphan*/  mod_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_FIND_ADDRESS ; 
 int /*<<< orphan*/  PDC_SYSTEM_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC4 (struct pdc_system_map_addr_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  pdc_result ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct pdc_system_map_addr_info *pdc_addr_info, 
			      long mod_index, long addr_index)
{
	int retval;
	unsigned long flags;

	FUNC5(&pdc_lock, flags);
	retval = FUNC3(PDC_SYSTEM_MAP, PDC_FIND_ADDRESS, FUNC0(pdc_result),
			      mod_index, addr_index);
	FUNC1(pdc_result);
	FUNC4(pdc_addr_info, pdc_result, sizeof(*pdc_addr_info));
	FUNC6(&pdc_lock, flags);

	pdc_addr_info->mod_addr = FUNC2(pdc_addr_info->mod_addr);
	return retval;
}