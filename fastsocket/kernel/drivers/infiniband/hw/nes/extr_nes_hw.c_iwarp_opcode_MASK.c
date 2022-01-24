#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/ * q2_vbase; } ;
struct nes_qp {TYPE_1__ hwqp; } ;

/* Variables and functions */
 int BAD_FRAME_OFFSET ; 
 int NES_AEQE_Q2_DATA_WRITTEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32 FUNC2(struct nes_qp *nesqp, u32 aeq_info)
{
	u8 *pkt;
	u16 *mpa;
	u32 opcode = 0xffffffff;

	if (aeq_info & NES_AEQE_Q2_DATA_WRITTEN) {
		pkt = nesqp->hwqp.q2_vbase + BAD_FRAME_OFFSET;
		mpa = (u16 *)FUNC1(pkt, aeq_info);
		opcode = FUNC0(mpa[1]) & 0xf;
	}

	return opcode;
}