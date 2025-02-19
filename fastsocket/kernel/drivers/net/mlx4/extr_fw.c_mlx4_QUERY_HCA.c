
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_init_hca_param {int global_caps; int hca_core_clock; int qpc_base; int log_num_qps; int srqc_base; int log_num_srqs; int cqc_base; int log_num_cqs; int altc_base; int auxc_base; int eqc_base; int log_num_eqs; int rdmarc_base; int log_rd_per_qp; scalar_t__ steering_mode; int mc_base; int log_mc_entry_sz; int log_mc_table_sz; int log_mc_hash_sz; int dmpt_base; int mw_enabled; int log_mpt_sz; int mtt_base; int cmpt_base; int uar_page_sz; int log_uar_sz; int dev_cap_enabled; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int * buf; } ;
typedef int __be32 ;


 int INIT_HCA_ALTC_BASE_OFFSET ;
 int INIT_HCA_AUXC_BASE_OFFSET ;
 int INIT_HCA_CMPT_BASE_OFFSET ;
 int INIT_HCA_CQC_BASE_OFFSET ;
 int INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN ;
 int INIT_HCA_DMPT_BASE_OFFSET ;
 int INIT_HCA_EQC_BASE_OFFSET ;
 int INIT_HCA_EQE_CQE_OFFSETS ;
 int INIT_HCA_FLAGS_OFFSET ;
 int INIT_HCA_FS_BASE_OFFSET ;
 int INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET ;
 int INIT_HCA_FS_LOG_TABLE_SZ_OFFSET ;
 int INIT_HCA_LOG_CQ_OFFSET ;
 int INIT_HCA_LOG_EQ_OFFSET ;
 int INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET ;
 int INIT_HCA_LOG_MC_HASH_SZ_OFFSET ;
 int INIT_HCA_LOG_MC_TABLE_SZ_OFFSET ;
 int INIT_HCA_LOG_MPT_SZ_OFFSET ;
 int INIT_HCA_LOG_QP_OFFSET ;
 int INIT_HCA_LOG_RD_OFFSET ;
 int INIT_HCA_LOG_SRQ_OFFSET ;
 int INIT_HCA_LOG_UAR_SZ_OFFSET ;
 int INIT_HCA_MC_BASE_OFFSET ;
 int INIT_HCA_MTT_BASE_OFFSET ;
 int INIT_HCA_QPC_BASE_OFFSET ;
 int INIT_HCA_RDMARC_BASE_OFFSET ;
 int INIT_HCA_SRQC_BASE_OFFSET ;
 int INIT_HCA_TPT_MW_OFFSET ;
 int INIT_HCA_UAR_PAGE_SZ_OFFSET ;
 int INIT_HCA_UC_STEERING_OFFSET ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_HCA ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_DEV_CAP_64B_CQE_ENABLED ;
 int MLX4_DEV_CAP_64B_EQE_ENABLED ;
 int MLX4_GET (int,int *,int ) ;
 scalar_t__ MLX4_STEERING_MODE_A0 ;
 scalar_t__ MLX4_STEERING_MODE_B0 ;
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_HCA_CORE_CLOCK_OFFSET ;
 int QUERY_HCA_GLOBAL_CAPS_OFFSET ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;

int mlx4_QUERY_HCA(struct mlx4_dev *dev,
     struct mlx4_init_hca_param *param)
{
 struct mlx4_cmd_mailbox *mailbox;
 __be32 *outbox;
 u32 dword_field;
 int err;
 u8 byte_field;




 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 err = mlx4_cmd_box(dev, 0, mailbox->dma, 0, 0,
      MLX4_CMD_QUERY_HCA,
      MLX4_CMD_TIME_CLASS_B,
      !mlx4_is_slave(dev));
 if (err)
  goto out;

 MLX4_GET(param->global_caps, outbox, 0x04);
 MLX4_GET(param->hca_core_clock, outbox, 0x0c);



 MLX4_GET(param->qpc_base, outbox, INIT_HCA_QPC_BASE_OFFSET);
 MLX4_GET(param->log_num_qps, outbox, INIT_HCA_LOG_QP_OFFSET);
 MLX4_GET(param->srqc_base, outbox, INIT_HCA_SRQC_BASE_OFFSET);
 MLX4_GET(param->log_num_srqs, outbox, INIT_HCA_LOG_SRQ_OFFSET);
 MLX4_GET(param->cqc_base, outbox, INIT_HCA_CQC_BASE_OFFSET);
 MLX4_GET(param->log_num_cqs, outbox, INIT_HCA_LOG_CQ_OFFSET);
 MLX4_GET(param->altc_base, outbox, INIT_HCA_ALTC_BASE_OFFSET);
 MLX4_GET(param->auxc_base, outbox, INIT_HCA_AUXC_BASE_OFFSET);
 MLX4_GET(param->eqc_base, outbox, INIT_HCA_EQC_BASE_OFFSET);
 MLX4_GET(param->log_num_eqs, outbox, INIT_HCA_LOG_EQ_OFFSET);
 MLX4_GET(param->rdmarc_base, outbox, INIT_HCA_RDMARC_BASE_OFFSET);
 MLX4_GET(param->log_rd_per_qp, outbox, INIT_HCA_LOG_RD_OFFSET);

 MLX4_GET(dword_field, outbox, INIT_HCA_FLAGS_OFFSET);
 if (dword_field & (1 << INIT_HCA_DEVICE_MANAGED_FLOW_STEERING_EN)) {
  param->steering_mode = MLX4_STEERING_MODE_DEVICE_MANAGED;
 } else {
  MLX4_GET(byte_field, outbox, INIT_HCA_UC_STEERING_OFFSET);
  if (byte_field & 0x8)
   param->steering_mode = MLX4_STEERING_MODE_B0;
  else
   param->steering_mode = MLX4_STEERING_MODE_A0;
 }

 if (param->steering_mode == MLX4_STEERING_MODE_DEVICE_MANAGED) {
  MLX4_GET(param->mc_base, outbox, INIT_HCA_FS_BASE_OFFSET);
  MLX4_GET(param->log_mc_entry_sz, outbox,
    INIT_HCA_FS_LOG_ENTRY_SZ_OFFSET);
  MLX4_GET(param->log_mc_table_sz, outbox,
    INIT_HCA_FS_LOG_TABLE_SZ_OFFSET);
 } else {
  MLX4_GET(param->mc_base, outbox, INIT_HCA_MC_BASE_OFFSET);
  MLX4_GET(param->log_mc_entry_sz, outbox,
    INIT_HCA_LOG_MC_ENTRY_SZ_OFFSET);
  MLX4_GET(param->log_mc_hash_sz, outbox,
    INIT_HCA_LOG_MC_HASH_SZ_OFFSET);
  MLX4_GET(param->log_mc_table_sz, outbox,
    INIT_HCA_LOG_MC_TABLE_SZ_OFFSET);
 }


 MLX4_GET(byte_field, outbox, INIT_HCA_EQE_CQE_OFFSETS);
 if (byte_field & 0x20)
  param->dev_cap_enabled |= MLX4_DEV_CAP_64B_EQE_ENABLED;
 if (byte_field & 0x40)
  param->dev_cap_enabled |= MLX4_DEV_CAP_64B_CQE_ENABLED;



 MLX4_GET(param->dmpt_base, outbox, INIT_HCA_DMPT_BASE_OFFSET);
 MLX4_GET(param->mw_enabled, outbox, INIT_HCA_TPT_MW_OFFSET);
 MLX4_GET(param->log_mpt_sz, outbox, INIT_HCA_LOG_MPT_SZ_OFFSET);
 MLX4_GET(param->mtt_base, outbox, INIT_HCA_MTT_BASE_OFFSET);
 MLX4_GET(param->cmpt_base, outbox, INIT_HCA_CMPT_BASE_OFFSET);



 MLX4_GET(param->uar_page_sz, outbox, INIT_HCA_UAR_PAGE_SZ_OFFSET);
 MLX4_GET(param->log_uar_sz, outbox, INIT_HCA_LOG_UAR_SZ_OFFSET);

out:
 mlx4_free_cmd_mailbox(dev, mailbox);

 return err;
}
