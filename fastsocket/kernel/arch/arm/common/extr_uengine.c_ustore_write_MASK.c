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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  USTORE_DATA_LOWER ; 
 int /*<<< orphan*/  USTORE_DATA_UPPER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int uengine, u64 insn)
{
	/*
	 * Generate even parity for top and bottom 20 bits.
	 */
	insn |= (u64)FUNC1((insn >> 20) & 0x000fffff) << 41;
	insn |= (u64)FUNC1(insn & 0x000fffff) << 40;

	/*
	 * Write to microstore.  The second write auto-increments
	 * the USTORE_ADDRESS index register.
	 */
	FUNC0(uengine, USTORE_DATA_LOWER, (u32)insn);
	FUNC0(uengine, USTORE_DATA_UPPER, (u32)(insn >> 32));
}