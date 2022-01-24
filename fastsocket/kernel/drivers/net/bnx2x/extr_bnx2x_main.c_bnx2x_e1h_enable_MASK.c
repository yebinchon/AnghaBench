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
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ NIG_REG_LLH0_FUNC_EN ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp)
{
	int port = FUNC0(bp);

	FUNC1(bp, NIG_REG_LLH0_FUNC_EN + port*8, 1);

	/* Tx queue should be only re-enabled */
	FUNC2(bp->dev);

	/*
	 * Should not call netif_carrier_on since it will be called if the link
	 * is up when checking for link state
	 */
}