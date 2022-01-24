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
struct bnx2 {int /*<<< orphan*/  indirect_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_PCICFG_REG_WINDOW ; 
 int /*<<< orphan*/  BNX2_PCICFG_REG_WINDOW_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct bnx2 *bp, u32 offset, u32 val)
{
	FUNC1(&bp->indirect_lock);
	FUNC0(bp, BNX2_PCICFG_REG_WINDOW_ADDRESS, offset);
	FUNC0(bp, BNX2_PCICFG_REG_WINDOW, val);
	FUNC2(&bp->indirect_lock);
}