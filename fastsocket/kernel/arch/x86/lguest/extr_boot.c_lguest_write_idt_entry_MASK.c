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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  gate_desc ;

/* Variables and functions */
 int /*<<< orphan*/  LHCALL_LOAD_IDT_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(gate_desc *dt,
				   int entrynum, const gate_desc *g)
{
	/*
	 * The gate_desc structure is 8 bytes long: we hand it to the Host in
	 * two 32-bit chunks.  The whole 32-bit kernel used to hand descriptors
	 * around like this; typesafety wasn't a big concern in Linux's early
	 * years.
	 */
	u32 *desc = (u32 *)g;
	/* Keep the local copy up to date. */
	FUNC1(dt, entrynum, g);
	/* Tell Host about this new entry. */
	FUNC0(LHCALL_LOAD_IDT_ENTRY, entrynum, desc[0], desc[1]);
}