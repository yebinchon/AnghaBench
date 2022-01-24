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
struct bnx2x_general_setup_params {int /*<<< orphan*/  cos; int /*<<< orphan*/  mtu; int /*<<< orphan*/  spcl_id; int /*<<< orphan*/  stat_id; } ;
struct bnx2x_fastpath {int /*<<< orphan*/  cl_id; } ;
struct bnx2x {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FCOE_MINI_JUMBO_MTU ; 
 scalar_t__ FUNC0 (struct bnx2x_fastpath*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x_fastpath*) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp,
	struct bnx2x_fastpath *fp, struct bnx2x_general_setup_params *gen_init,
	u8 cos)
{
	gen_init->stat_id = FUNC1(fp);
	gen_init->spcl_id = fp->cl_id;

	/* Always use mini-jumbo MTU for FCoE L2 ring */
	if (FUNC0(fp))
		gen_init->mtu = BNX2X_FCOE_MINI_JUMBO_MTU;
	else
		gen_init->mtu = bp->dev->mtu;

	gen_init->cos = cos;
}