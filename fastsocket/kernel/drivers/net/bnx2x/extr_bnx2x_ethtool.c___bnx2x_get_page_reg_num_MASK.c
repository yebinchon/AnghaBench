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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  PAGE_MODE_VALUES_E2 ; 
 int /*<<< orphan*/  PAGE_MODE_VALUES_E3 ; 

__attribute__((used)) static u32 FUNC2(struct bnx2x *bp)
{
	if (FUNC0(bp))
		return PAGE_MODE_VALUES_E2;
	else if (FUNC1(bp))
		return PAGE_MODE_VALUES_E3;
	else
		return 0;
}