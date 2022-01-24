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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int MCP_ONE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp)
{
	/* special handling for emulation and FPGA,
	   wait 10 times longer */
	if (FUNC0(bp))
		FUNC1(MCP_ONE_TIMEOUT*10);
	else
		FUNC1(MCP_ONE_TIMEOUT);
}