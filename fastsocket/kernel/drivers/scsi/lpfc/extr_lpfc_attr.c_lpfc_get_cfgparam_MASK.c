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
struct lpfc_hba {scalar_t__ sli_rev; long cfg_soft_wwnn; long cfg_soft_wwpn; int cfg_enable_dss; scalar_t__ cfg_poll; } ;

/* Variables and functions */
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  lpfc_ack0 ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_aer_support ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cr_count ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cr_delay ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_bg ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_hba_heartbeat ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_hba_reset ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_npiv ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_rrq ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcf_failover_policy ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp2_no_tgt_reset ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_cpu_map ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_imax ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_io_channel ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_io_sched ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_hba_queue_depth ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_iocb_cnt ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_link_speed ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_log_verbose ; 
 int /*<<< orphan*/  lpfc_multi_ring_rctl ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_multi_ring_support ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_multi_ring_type ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ lpfc_poll ; 
 int /*<<< orphan*/  lpfc_poll_tmo ; 
 int /*<<< orphan*/  FUNC22 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_prot_sg_seg_cnt ; 
 int /*<<< orphan*/  FUNC23 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_req_fw_upgrade ; 
 int /*<<< orphan*/  FUNC24 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sg_seg_cnt ; 
 int /*<<< orphan*/  FUNC25 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sriov_nr_virtfn ; 
 int /*<<< orphan*/  FUNC26 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_suppress_link_up ; 
 int /*<<< orphan*/  FUNC27 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_task_mgmt_tmo ; 
 int /*<<< orphan*/  FUNC28 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_topology ; 
 int /*<<< orphan*/  FUNC29 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_use_msi ; 
 int /*<<< orphan*/  FUNC30 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 

void
FUNC31(struct lpfc_hba *phba)
{
	FUNC14(phba, lpfc_fcp_io_sched);
	FUNC10(phba, lpfc_fcp2_no_tgt_reset);
	FUNC3(phba, lpfc_cr_delay);
	FUNC2(phba, lpfc_cr_count);
	FUNC20(phba, lpfc_multi_ring_support);
	FUNC19(phba, lpfc_multi_ring_rctl);
	FUNC21(phba, lpfc_multi_ring_type);
	FUNC0(phba, lpfc_ack0);
	FUNC29(phba, lpfc_topology);
	FUNC18(phba, lpfc_link_speed);
	FUNC22(phba, lpfc_poll_tmo);
	FUNC28(phba, lpfc_task_mgmt_tmo);
	FUNC7(phba, lpfc_enable_npiv);
	FUNC9(phba, lpfc_fcf_failover_policy);
	FUNC8(phba, lpfc_enable_rrq);
	FUNC30(phba, lpfc_use_msi);
	FUNC12(phba, lpfc_fcp_imax);
	FUNC11(phba, lpfc_fcp_cpu_map);
	FUNC13(phba, lpfc_fcp_io_channel);
	FUNC6(phba, lpfc_enable_hba_reset);
	FUNC5(phba, lpfc_enable_hba_heartbeat);
	FUNC4(phba, lpfc_enable_bg);
	if (phba->sli_rev == LPFC_SLI_REV4)
		phba->cfg_poll = 0;
	else
	phba->cfg_poll = lpfc_poll;
	phba->cfg_soft_wwnn = 0L;
	phba->cfg_soft_wwpn = 0L;
	FUNC25(phba, lpfc_sg_seg_cnt);
	FUNC23(phba, lpfc_prot_sg_seg_cnt);
	FUNC16(phba, lpfc_hba_queue_depth);
	FUNC15(phba, lpfc_log_verbose);
	FUNC1(phba, lpfc_aer_support);
	FUNC26(phba, lpfc_sriov_nr_virtfn);
	FUNC24(phba, lpfc_req_fw_upgrade);
	FUNC27(phba, lpfc_suppress_link_up);
	FUNC17(phba, lpfc_iocb_cnt);
	phba->cfg_enable_dss = 1;
	return;
}