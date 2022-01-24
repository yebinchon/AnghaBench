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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTX_ENABLES ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 

void FUNC2(int uengine, u8 ctx_mask)
{
	u32 mask;

	/*
	 * Disable the Ready->Executing transition.  Note that this
	 * does not stop the context until it voluntarily yields.
	 */
	mask = FUNC0(uengine, CTX_ENABLES);
	mask &= ~(ctx_mask << 8);
	FUNC1(uengine, CTX_ENABLES, mask);
}