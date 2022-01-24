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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  atom_exec_context ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_SRC_BYTE0 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int* atom_def_dst ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int*,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int*,int,int) ; 

__attribute__((used)) static void FUNC5(atom_exec_context *ctx, int *ptr, int arg)
{
	uint8_t attr = FUNC1((*ptr)++), shift;
	uint32_t saved, dst;
	int dptr = *ptr;
	attr &= 0x38;
	attr |= atom_def_dst[attr >> 3] << 6;
	FUNC0("   dst: ");
	dst = FUNC2(ctx, arg, attr, ptr, &saved, 1);
	shift = FUNC3(ctx, ATOM_SRC_BYTE0, ptr);
	FUNC0("   shift: %d\n", shift);
	dst >>= shift;
	FUNC0("   dst: ");
	FUNC4(ctx, arg, attr, &dptr, dst, saved);
}