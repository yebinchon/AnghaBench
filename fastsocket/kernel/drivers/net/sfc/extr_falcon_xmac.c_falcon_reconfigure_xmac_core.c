
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fc; } ;
struct efx_nic {TYPE_2__* net_dev; int promiscuous; TYPE_1__ link_state; } ;
typedef int efx_oword_t ;
struct TYPE_4__ {int * dev_addr; int mtu; } ;


 int EFX_FC_RX ;
 int EFX_FC_TX ;
 unsigned int EFX_MAX_FRAME_LEN (int ) ;
 int EFX_POPULATE_OWORD_1 (int ,int ,unsigned int) ;
 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int) ;
 int EFX_POPULATE_OWORD_3 (int ,int ,int,int ,int,int ,int) ;
 int EFX_POPULATE_OWORD_5 (int ,int ,int,int ,int ,int ,int,int ,int ,int ,int) ;
 int EFX_POPULATE_OWORD_6 (int ,int ,int,int ,int,int ,int,int ,int,int ,int,int ,int) ;
 int FRF_AB_XM_ACPT_ALL_MCAST ;
 int FRF_AB_XM_ACPT_ALL_UCAST ;
 int FRF_AB_XM_AUTO_DEPAD ;
 int FRF_AB_XM_AUTO_PAD ;
 int FRF_AB_XM_DIS_FCNTL ;
 int FRF_AB_XM_FCNTL ;
 int FRF_AB_XM_IPG ;
 int FRF_AB_XM_MAX_RX_FRM_SIZE ;
 int FRF_AB_XM_MAX_TX_FRM_SIZE ;
 int FRF_AB_XM_PASS_CRC_ERR ;
 int FRF_AB_XM_PAUSE_TIME ;
 int FRF_AB_XM_RXEN ;
 int FRF_AB_XM_RX_JUMBO_MODE ;
 int FRF_AB_XM_RX_STAT_EN ;
 int FRF_AB_XM_TXCRC ;
 int FRF_AB_XM_TXEN ;
 int FRF_AB_XM_TX_JUMBO_MODE ;
 int FRF_AB_XM_TX_PRMBL ;
 int FRF_AB_XM_TX_STAT_EN ;
 int FR_AB_XM_ADR_HI ;
 int FR_AB_XM_ADR_LO ;
 int FR_AB_XM_FC ;
 int FR_AB_XM_GLB_CFG ;
 int FR_AB_XM_RX_CFG ;
 int FR_AB_XM_RX_PARAM ;
 int FR_AB_XM_TX_CFG ;
 int FR_AB_XM_TX_PARAM ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void falcon_reconfigure_xmac_core(struct efx_nic *efx)
{
 unsigned int max_frame_len;
 efx_oword_t reg;
 bool rx_fc = !!(efx->link_state.fc & EFX_FC_RX);
 bool tx_fc = !!(efx->link_state.fc & EFX_FC_TX);


 EFX_POPULATE_OWORD_3(reg,
        FRF_AB_XM_RX_JUMBO_MODE, 1,
        FRF_AB_XM_TX_STAT_EN, 1,
        FRF_AB_XM_RX_STAT_EN, 1);
 efx_writeo(efx, &reg, FR_AB_XM_GLB_CFG);


 EFX_POPULATE_OWORD_6(reg,
        FRF_AB_XM_TXEN, 1,
        FRF_AB_XM_TX_PRMBL, 1,
        FRF_AB_XM_AUTO_PAD, 1,
        FRF_AB_XM_TXCRC, 1,
        FRF_AB_XM_FCNTL, tx_fc,
        FRF_AB_XM_IPG, 0x3);
 efx_writeo(efx, &reg, FR_AB_XM_TX_CFG);


 EFX_POPULATE_OWORD_5(reg,
        FRF_AB_XM_RXEN, 1,
        FRF_AB_XM_AUTO_DEPAD, 0,
        FRF_AB_XM_ACPT_ALL_MCAST, 1,
        FRF_AB_XM_ACPT_ALL_UCAST, efx->promiscuous,
        FRF_AB_XM_PASS_CRC_ERR, 1);
 efx_writeo(efx, &reg, FR_AB_XM_RX_CFG);


 max_frame_len = EFX_MAX_FRAME_LEN(efx->net_dev->mtu);
 EFX_POPULATE_OWORD_1(reg, FRF_AB_XM_MAX_RX_FRM_SIZE, max_frame_len);
 efx_writeo(efx, &reg, FR_AB_XM_RX_PARAM);
 EFX_POPULATE_OWORD_2(reg,
        FRF_AB_XM_MAX_TX_FRM_SIZE, max_frame_len,
        FRF_AB_XM_TX_JUMBO_MODE, 1);
 efx_writeo(efx, &reg, FR_AB_XM_TX_PARAM);

 EFX_POPULATE_OWORD_2(reg,
        FRF_AB_XM_PAUSE_TIME, 0xfffe,
        FRF_AB_XM_DIS_FCNTL, !rx_fc);
 efx_writeo(efx, &reg, FR_AB_XM_FC);


 memcpy(&reg, &efx->net_dev->dev_addr[0], 4);
 efx_writeo(efx, &reg, FR_AB_XM_ADR_LO);
 memcpy(&reg, &efx->net_dev->dev_addr[4], 2);
 efx_writeo(efx, &reg, FR_AB_XM_ADR_HI);
}
