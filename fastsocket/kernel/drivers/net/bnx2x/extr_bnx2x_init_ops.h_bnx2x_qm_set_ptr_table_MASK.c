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
 int QM_QUEUES_PER_FUNC ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, int qm_cid_count,
				   u32 base_reg, u32 reg)
{
	int i;
	u32 wb_data[2] = {0, 0};
	for (i = 0; i < 4 * QM_QUEUES_PER_FUNC; i++) {
		FUNC0(bp, base_reg + i*4,
		       qm_cid_count * 4 * (i % QM_QUEUES_PER_FUNC));
		FUNC1(bp, reg + i*8,	 wb_data, 2);
	}
}