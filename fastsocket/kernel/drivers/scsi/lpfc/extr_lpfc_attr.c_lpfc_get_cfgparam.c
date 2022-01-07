
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ sli_rev; long cfg_soft_wwnn; long cfg_soft_wwpn; int cfg_enable_dss; scalar_t__ cfg_poll; } ;


 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_ack0 ;
 int lpfc_ack0_init (struct lpfc_hba*,int ) ;
 int lpfc_aer_support ;
 int lpfc_aer_support_init (struct lpfc_hba*,int ) ;
 int lpfc_cr_count ;
 int lpfc_cr_count_init (struct lpfc_hba*,int ) ;
 int lpfc_cr_delay ;
 int lpfc_cr_delay_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_bg ;
 int lpfc_enable_bg_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_hba_heartbeat ;
 int lpfc_enable_hba_heartbeat_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_hba_reset ;
 int lpfc_enable_hba_reset_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_npiv ;
 int lpfc_enable_npiv_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_rrq ;
 int lpfc_enable_rrq_init (struct lpfc_hba*,int ) ;
 int lpfc_fcf_failover_policy ;
 int lpfc_fcf_failover_policy_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp2_no_tgt_reset ;
 int lpfc_fcp2_no_tgt_reset_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_cpu_map ;
 int lpfc_fcp_cpu_map_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_imax ;
 int lpfc_fcp_imax_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_io_channel ;
 int lpfc_fcp_io_channel_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_io_sched ;
 int lpfc_fcp_io_sched_init (struct lpfc_hba*,int ) ;
 int lpfc_hba_log_verbose_init (struct lpfc_hba*,int ) ;
 int lpfc_hba_queue_depth ;
 int lpfc_hba_queue_depth_init (struct lpfc_hba*,int ) ;
 int lpfc_iocb_cnt ;
 int lpfc_iocb_cnt_init (struct lpfc_hba*,int ) ;
 int lpfc_link_speed ;
 int lpfc_link_speed_init (struct lpfc_hba*,int ) ;
 int lpfc_log_verbose ;
 int lpfc_multi_ring_rctl ;
 int lpfc_multi_ring_rctl_init (struct lpfc_hba*,int ) ;
 int lpfc_multi_ring_support ;
 int lpfc_multi_ring_support_init (struct lpfc_hba*,int ) ;
 int lpfc_multi_ring_type ;
 int lpfc_multi_ring_type_init (struct lpfc_hba*,int ) ;
 scalar_t__ lpfc_poll ;
 int lpfc_poll_tmo ;
 int lpfc_poll_tmo_init (struct lpfc_hba*,int ) ;
 int lpfc_prot_sg_seg_cnt ;
 int lpfc_prot_sg_seg_cnt_init (struct lpfc_hba*,int ) ;
 int lpfc_req_fw_upgrade ;
 int lpfc_request_firmware_upgrade_init (struct lpfc_hba*,int ) ;
 int lpfc_sg_seg_cnt ;
 int lpfc_sg_seg_cnt_init (struct lpfc_hba*,int ) ;
 int lpfc_sriov_nr_virtfn ;
 int lpfc_sriov_nr_virtfn_init (struct lpfc_hba*,int ) ;
 int lpfc_suppress_link_up ;
 int lpfc_suppress_link_up_init (struct lpfc_hba*,int ) ;
 int lpfc_task_mgmt_tmo ;
 int lpfc_task_mgmt_tmo_init (struct lpfc_hba*,int ) ;
 int lpfc_topology ;
 int lpfc_topology_init (struct lpfc_hba*,int ) ;
 int lpfc_use_msi ;
 int lpfc_use_msi_init (struct lpfc_hba*,int ) ;

void
lpfc_get_cfgparam(struct lpfc_hba *phba)
{
 lpfc_fcp_io_sched_init(phba, lpfc_fcp_io_sched);
 lpfc_fcp2_no_tgt_reset_init(phba, lpfc_fcp2_no_tgt_reset);
 lpfc_cr_delay_init(phba, lpfc_cr_delay);
 lpfc_cr_count_init(phba, lpfc_cr_count);
 lpfc_multi_ring_support_init(phba, lpfc_multi_ring_support);
 lpfc_multi_ring_rctl_init(phba, lpfc_multi_ring_rctl);
 lpfc_multi_ring_type_init(phba, lpfc_multi_ring_type);
 lpfc_ack0_init(phba, lpfc_ack0);
 lpfc_topology_init(phba, lpfc_topology);
 lpfc_link_speed_init(phba, lpfc_link_speed);
 lpfc_poll_tmo_init(phba, lpfc_poll_tmo);
 lpfc_task_mgmt_tmo_init(phba, lpfc_task_mgmt_tmo);
 lpfc_enable_npiv_init(phba, lpfc_enable_npiv);
 lpfc_fcf_failover_policy_init(phba, lpfc_fcf_failover_policy);
 lpfc_enable_rrq_init(phba, lpfc_enable_rrq);
 lpfc_use_msi_init(phba, lpfc_use_msi);
 lpfc_fcp_imax_init(phba, lpfc_fcp_imax);
 lpfc_fcp_cpu_map_init(phba, lpfc_fcp_cpu_map);
 lpfc_fcp_io_channel_init(phba, lpfc_fcp_io_channel);
 lpfc_enable_hba_reset_init(phba, lpfc_enable_hba_reset);
 lpfc_enable_hba_heartbeat_init(phba, lpfc_enable_hba_heartbeat);
 lpfc_enable_bg_init(phba, lpfc_enable_bg);
 if (phba->sli_rev == LPFC_SLI_REV4)
  phba->cfg_poll = 0;
 else
 phba->cfg_poll = lpfc_poll;
 phba->cfg_soft_wwnn = 0L;
 phba->cfg_soft_wwpn = 0L;
 lpfc_sg_seg_cnt_init(phba, lpfc_sg_seg_cnt);
 lpfc_prot_sg_seg_cnt_init(phba, lpfc_prot_sg_seg_cnt);
 lpfc_hba_queue_depth_init(phba, lpfc_hba_queue_depth);
 lpfc_hba_log_verbose_init(phba, lpfc_log_verbose);
 lpfc_aer_support_init(phba, lpfc_aer_support);
 lpfc_sriov_nr_virtfn_init(phba, lpfc_sriov_nr_virtfn);
 lpfc_request_firmware_upgrade_init(phba, lpfc_req_fw_upgrade);
 lpfc_suppress_link_up_init(phba, lpfc_suppress_link_up);
 lpfc_iocb_cnt_init(phba, lpfc_iocb_cnt);
 phba->cfg_enable_dss = 1;
 return;
}
