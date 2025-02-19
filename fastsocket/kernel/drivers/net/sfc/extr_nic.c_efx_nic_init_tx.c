
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int entries; int index; } ;
struct efx_tx_queue {int queue; TYPE_3__ txd; TYPE_1__* channel; struct efx_nic* efx; } ;
struct efx_nic {TYPE_2__* type; } ;
typedef int efx_oword_t ;
struct TYPE_5__ {int txd_ptr_tbl_base; } ;
struct TYPE_4__ {int channel; } ;


 int BUILD_BUG_ON (int) ;
 int EFX_MAX_TX_QUEUES ;
 int EFX_POPULATE_OWORD_1 (int ,int ,int ) ;
 int EFX_POPULATE_OWORD_10 (int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ,int ,int) ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int EFX_TXQ_TYPE_HIGHPRI ;
 int EFX_TXQ_TYPE_OFFLOAD ;
 int FFE_BZ_TX_PACE_OFF ;
 int FFE_BZ_TX_PACE_RESERVED ;
 int FRF_AZ_TX_DESCQ_BUF_BASE_ID ;
 int FRF_AZ_TX_DESCQ_EN ;
 int FRF_AZ_TX_DESCQ_EVQ_ID ;
 int FRF_AZ_TX_DESCQ_LABEL ;
 int FRF_AZ_TX_DESCQ_OWNER_ID ;
 int FRF_AZ_TX_DESCQ_SIZE ;
 int FRF_AZ_TX_DESCQ_TYPE ;
 int FRF_AZ_TX_ISCSI_DDIG_EN ;
 int FRF_AZ_TX_ISCSI_HDIG_EN ;
 int FRF_BZ_TX_IP_CHKSM_DIS ;
 int FRF_BZ_TX_NON_IP_DROP_DIS ;
 int FRF_BZ_TX_PACE ;
 int FRF_BZ_TX_TCP_CHKSM_DIS ;
 int FR_AA_TX_CHKSM_CFG ;
 int FR_BZ_TX_PACE_TBL ;
 int __clear_bit_le (int,void*) ;
 int __ffs (int ) ;
 int __set_bit_le (int,void*) ;
 int efx_init_special_buffer (struct efx_nic*,TYPE_3__*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int) ;

void efx_nic_init_tx(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;
 efx_oword_t reg;


 efx_init_special_buffer(efx, &tx_queue->txd);


 EFX_POPULATE_OWORD_10(reg,
         FRF_AZ_TX_DESCQ_EN, 1,
         FRF_AZ_TX_ISCSI_DDIG_EN, 0,
         FRF_AZ_TX_ISCSI_HDIG_EN, 0,
         FRF_AZ_TX_DESCQ_BUF_BASE_ID, tx_queue->txd.index,
         FRF_AZ_TX_DESCQ_EVQ_ID,
         tx_queue->channel->channel,
         FRF_AZ_TX_DESCQ_OWNER_ID, 0,
         FRF_AZ_TX_DESCQ_LABEL, tx_queue->queue,
         FRF_AZ_TX_DESCQ_SIZE,
         __ffs(tx_queue->txd.entries),
         FRF_AZ_TX_DESCQ_TYPE, 0,
         FRF_BZ_TX_NON_IP_DROP_DIS, 1);

 if (efx_nic_rev(efx) >= EFX_REV_FALCON_B0) {
  int csum = tx_queue->queue & EFX_TXQ_TYPE_OFFLOAD;
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_TX_IP_CHKSM_DIS, !csum);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_TX_TCP_CHKSM_DIS,
        !csum);
 }

 efx_writeo_table(efx, &reg, efx->type->txd_ptr_tbl_base,
    tx_queue->queue);

 if (efx_nic_rev(efx) < EFX_REV_FALCON_B0) {

  BUILD_BUG_ON(EFX_MAX_TX_QUEUES > 128);

  efx_reado(efx, &reg, FR_AA_TX_CHKSM_CFG);
  if (tx_queue->queue & EFX_TXQ_TYPE_OFFLOAD)
   __clear_bit_le(tx_queue->queue, (void *)&reg);
  else
   __set_bit_le(tx_queue->queue, (void *)&reg);
  efx_writeo(efx, &reg, FR_AA_TX_CHKSM_CFG);
 }

 if (efx_nic_rev(efx) >= EFX_REV_FALCON_B0) {
  EFX_POPULATE_OWORD_1(reg,
         FRF_BZ_TX_PACE,
         (tx_queue->queue & EFX_TXQ_TYPE_HIGHPRI) ?
         FFE_BZ_TX_PACE_OFF :
         FFE_BZ_TX_PACE_RESERVED);
  efx_writeo_table(efx, &reg, FR_BZ_TX_PACE_TBL,
     tx_queue->queue);
 }
}
