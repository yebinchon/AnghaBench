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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  H_MEHEAPORT_CAT ; 
 int /*<<< orphan*/  H_MEHEAPORT_PN ; 
 int /*<<< orphan*/  H_QUERY_HEA_PORT ; 
 int FUNC1 (int /*<<< orphan*/ ,int const,int,int const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 

u64 FUNC3(const u64 adapter_handle, const u16 port_num,
			   const u8 cb_cat, const u64 select_mask,
			   void *cb_addr)
{
	u64 port_info;
	u64 cb_logaddr = FUNC2(cb_addr);
	u64 arr_index = 0;

	port_info = FUNC0(H_MEHEAPORT_CAT, cb_cat)
		  | FUNC0(H_MEHEAPORT_PN, port_num);

	return FUNC1(H_QUERY_HEA_PORT,
				       adapter_handle,		/* R4 */
				       port_info,		/* R5 */
				       select_mask,		/* R6 */
				       arr_index,		/* R7 */
				       cb_logaddr,		/* R8 */
				       0, 0);			/* R9-R10 */
}