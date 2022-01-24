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
struct cx88_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P1_MADDR0 ; 
 int /*<<< orphan*/  P1_MADDR1 ; 
 int /*<<< orphan*/  P1_MADDR2 ; 
 int /*<<< orphan*/  P1_MDATA0 ; 
 int /*<<< orphan*/  P1_MDATA1 ; 
 int /*<<< orphan*/  P1_MDATA2 ; 
 int /*<<< orphan*/  P1_MDATA3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct cx88_core*,int) ; 

__attribute__((used)) static int FUNC3(struct cx88_core *core, u32 address, u32 *value)
{
	int retval;
	u32 val;

	/* Warning: address is dword address (4 bytes) */
	FUNC1(P1_MADDR2, (unsigned int)(address >> 16) & ~0xC0);
	FUNC1(P1_MADDR1, (unsigned int)(address >> 8));
	FUNC1(P1_MADDR0, (unsigned int)address);
	FUNC0(P1_MADDR0);

	retval = FUNC2(core,1);

	FUNC1(P1_MDATA3, 0);
	val     = (unsigned char)FUNC0(P1_MDATA3) << 24;
	FUNC1(P1_MDATA2, 0);
	val    |= (unsigned char)FUNC0(P1_MDATA2) << 16;
	FUNC1(P1_MDATA1, 0);
	val    |= (unsigned char)FUNC0(P1_MDATA1) << 8;
	FUNC1(P1_MDATA0, 0);
	val    |= (unsigned char)FUNC0(P1_MDATA0);

	*value  = val;
	return retval;
}