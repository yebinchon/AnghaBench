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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_Q_FLG_COS ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_DHC ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_HC ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_OV ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_STATS ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA_GRO ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_TPA_IPV6 ; 
 int /*<<< orphan*/  BNX2X_Q_FLG_VLAN ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int VFPF_QUEUE_FLG_COS ; 
 int VFPF_QUEUE_FLG_DHC ; 
 int VFPF_QUEUE_FLG_HC ; 
 int VFPF_QUEUE_FLG_STATS ; 
 int VFPF_QUEUE_FLG_TPA ; 
 int VFPF_QUEUE_FLG_TPA_GRO ; 
 int VFPF_QUEUE_FLG_TPA_IPV6 ; 
 int VFPF_QUEUE_FLG_VLAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, u32 mbx_q_flags,
				     unsigned long *sp_q_flags)
{
	if (mbx_q_flags & VFPF_QUEUE_FLG_TPA)
		FUNC1(BNX2X_Q_FLG_TPA, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_TPA_IPV6)
		FUNC1(BNX2X_Q_FLG_TPA_IPV6, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_TPA_GRO)
		FUNC1(BNX2X_Q_FLG_TPA_GRO, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_STATS)
		FUNC1(BNX2X_Q_FLG_STATS, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_VLAN)
		FUNC1(BNX2X_Q_FLG_VLAN, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_COS)
		FUNC1(BNX2X_Q_FLG_COS, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_HC)
		FUNC1(BNX2X_Q_FLG_HC, sp_q_flags);
	if (mbx_q_flags & VFPF_QUEUE_FLG_DHC)
		FUNC1(BNX2X_Q_FLG_DHC, sp_q_flags);

	/* outer vlan removal is set according to PF's multi function mode */
	if (FUNC0(bp))
		FUNC1(BNX2X_Q_FLG_OV, sp_q_flags);
}