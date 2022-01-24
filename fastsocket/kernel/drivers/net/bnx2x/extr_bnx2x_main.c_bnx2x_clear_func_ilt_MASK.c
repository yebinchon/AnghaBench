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
typedef  scalar_t__ u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ILT_PER_FUNC ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, u32 func)
{
	u32 i, base = FUNC0(func);
	for (i = base; i < base + ILT_PER_FUNC; i++)
		FUNC1(bp, i, 0);
}