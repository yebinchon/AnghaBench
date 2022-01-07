
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_qla_host {int loop_id; int loop_state; } ;
struct qla_hw_data {int s_dma_pool; int dpc_active; int pdev; } ;
struct link_statistics {int fcp_input_megabytes; int fcp_output_megabytes; int nos_rcvd; int nos_count; int dumped_frames; int rx_frames; int tx_frames; int lip_cnt; int lip_count; int inval_crc_cnt; int invalid_crc_count; int inval_xmit_word_cnt; int invalid_tx_word_count; int prim_seq_err_cnt; int prim_seq_protocol_err_count; int loss_sig_cnt; int loss_of_signal_count; int loss_sync_cnt; int loss_of_sync_count; int link_fail_cnt; int link_failure_count; } ;
struct fc_host_statistics {int fcp_input_megabytes; int fcp_output_megabytes; int nos_rcvd; int nos_count; int dumped_frames; int rx_frames; int tx_frames; int lip_cnt; int lip_count; int inval_crc_cnt; int invalid_crc_count; int inval_xmit_word_cnt; int invalid_tx_word_count; int prim_seq_err_cnt; int prim_seq_protocol_err_count; int loss_sig_cnt; int loss_of_signal_count; int loss_sync_cnt; int loss_of_sync_count; int link_fail_cnt; int link_failure_count; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int input_bytes; int output_bytes; } ;
struct TYPE_7__ {TYPE_1__ qla_stats; int dpc_flags; struct qla_hw_data* hw; struct link_statistics fc_host_stat; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef int dma_addr_t ;


 int DMA_POOL_SIZE ;
 int GFP_KERNEL ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 scalar_t__ LOOP_READY ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int UNLOADING ;
 scalar_t__ atomic_read (int *) ;
 struct link_statistics* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct link_statistics*,int ) ;
 int memset (struct link_statistics*,int,int) ;
 int pci_channel_offline (int ) ;
 struct scsi_qla_host* pci_get_drvdata (int ) ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_warn ;
 int qla24xx_get_isp_stats (struct scsi_qla_host*,struct link_statistics*,int ) ;
 int qla2x00_get_link_status (struct scsi_qla_host*,int ,struct link_statistics*,int ) ;
 int qla2x00_reset_active (TYPE_2__*) ;
 TYPE_2__* shost_priv (struct Scsi_Host*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct fc_host_statistics *
qla2x00_get_fc_host_stats(struct Scsi_Host *shost)
{
 scsi_qla_host_t *vha = shost_priv(shost);
 struct qla_hw_data *ha = vha->hw;
 struct scsi_qla_host *base_vha = pci_get_drvdata(ha->pdev);
 int rval;
 struct link_statistics *stats;
 dma_addr_t stats_dma;
 struct fc_host_statistics *pfc_host_stat;

 pfc_host_stat = &vha->fc_host_stat;
 memset(pfc_host_stat, -1, sizeof(struct fc_host_statistics));

 if (IS_QLAFX00(vha->hw))
  goto done;

 if (test_bit(UNLOADING, &vha->dpc_flags))
  goto done;

 if (unlikely(pci_channel_offline(ha->pdev)))
  goto done;

 stats = dma_pool_alloc(ha->s_dma_pool, GFP_KERNEL, &stats_dma);
 if (stats == ((void*)0)) {
  ql_log(ql_log_warn, vha, 0x707d,
      "Failed to allocate memory for stats.\n");
  goto done;
 }
 memset(stats, 0, DMA_POOL_SIZE);

 rval = QLA_FUNCTION_FAILED;
 if (IS_FWI2_CAPABLE(ha)) {
  rval = qla24xx_get_isp_stats(base_vha, stats, stats_dma);
 } else if (atomic_read(&base_vha->loop_state) == LOOP_READY &&
     !qla2x00_reset_active(vha) && !ha->dpc_active) {

  rval = qla2x00_get_link_status(base_vha, base_vha->loop_id,
      stats, stats_dma);
 }

 if (rval != QLA_SUCCESS)
  goto done_free;

 pfc_host_stat->link_failure_count = stats->link_fail_cnt;
 pfc_host_stat->loss_of_sync_count = stats->loss_sync_cnt;
 pfc_host_stat->loss_of_signal_count = stats->loss_sig_cnt;
 pfc_host_stat->prim_seq_protocol_err_count = stats->prim_seq_err_cnt;
 pfc_host_stat->invalid_tx_word_count = stats->inval_xmit_word_cnt;
 pfc_host_stat->invalid_crc_count = stats->inval_crc_cnt;
 if (IS_FWI2_CAPABLE(ha)) {
  pfc_host_stat->lip_count = stats->lip_cnt;
  pfc_host_stat->tx_frames = stats->tx_frames;
  pfc_host_stat->rx_frames = stats->rx_frames;
  pfc_host_stat->dumped_frames = stats->dumped_frames;
  pfc_host_stat->nos_count = stats->nos_rcvd;
 }
 pfc_host_stat->fcp_input_megabytes = vha->qla_stats.input_bytes >> 20;
 pfc_host_stat->fcp_output_megabytes = vha->qla_stats.output_bytes >> 20;

done_free:
        dma_pool_free(ha->s_dma_pool, stats, stats_dma);
done:
 return pfc_host_stat;
}
