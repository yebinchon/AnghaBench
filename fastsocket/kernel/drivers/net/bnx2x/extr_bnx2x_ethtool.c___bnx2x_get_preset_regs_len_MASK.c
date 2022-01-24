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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int** dump_num_registers ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp, u32 preset)
{
	if (FUNC0(bp))
		return dump_num_registers[0][preset-1];
	else if (FUNC1(bp))
		return dump_num_registers[1][preset-1];
	else if (FUNC2(bp))
		return dump_num_registers[2][preset-1];
	else if (FUNC3(bp))
		return dump_num_registers[3][preset-1];
	else if (FUNC4(bp))
		return dump_num_registers[4][preset-1];
	else
		return 0;
}