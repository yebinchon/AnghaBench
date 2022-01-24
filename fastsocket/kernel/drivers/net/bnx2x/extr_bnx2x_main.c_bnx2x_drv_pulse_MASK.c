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
struct bnx2x {int /*<<< orphan*/  fw_drv_pulse_wr_seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_pulse_mb; } ;

/* Variables and functions */
 size_t FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* func_mb ; 

void FUNC2(struct bnx2x *bp)
{
	FUNC1(bp, func_mb[FUNC0(bp)].drv_pulse_mb,
		 bp->fw_drv_pulse_wr_seq);
}