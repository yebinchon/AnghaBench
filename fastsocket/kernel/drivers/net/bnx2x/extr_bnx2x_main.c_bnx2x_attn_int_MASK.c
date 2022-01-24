#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bnx2x {int attn_state; TYPE_2__* def_status_blk; } ;
struct TYPE_3__ {int /*<<< orphan*/  attn_bits_ack; int /*<<< orphan*/  attn_bits; } ;
struct TYPE_4__ {TYPE_1__ atten_status_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	/* read local copy of bits */
	u32 attn_bits = FUNC4(bp->def_status_blk->atten_status_block.
								attn_bits);
	u32 attn_ack = FUNC4(bp->def_status_blk->atten_status_block.
								attn_bits_ack);
	u32 attn_state = bp->attn_state;

	/* look for changed bits */
	u32 asserted   =  attn_bits & ~attn_ack & ~attn_state;
	u32 deasserted = ~attn_bits &  attn_ack &  attn_state;

	FUNC1(NETIF_MSG_HW,
	   "attn_bits %x  attn_ack %x  asserted %x  deasserted %x\n",
	   attn_bits, attn_ack, asserted, deasserted);

	if (~(attn_bits ^ attn_ack) & (attn_bits ^ attn_state))
		FUNC0("BAD attention state\n");

	/* handle bits that were raised */
	if (asserted)
		FUNC2(bp, asserted);

	if (deasserted)
		FUNC3(bp, deasserted);
}