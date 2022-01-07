
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct efx_nic {scalar_t__ rx_hash_key; } ;
typedef int efx_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_OWORD_1 (int ,int ,int) ;
 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int) ;
 int EFX_RX_USR_BUF_SIZE ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int FRF_AZ_TX_NO_EOP_DISC_EN ;
 int FRF_BZ_FLS_EVQ_ID ;
 int FRF_BZ_RX_DESC_PUSH_EN ;
 int FRF_BZ_RX_HASH_ALG ;
 int FRF_BZ_RX_HASH_INSRT_HDR ;
 int FRF_BZ_RX_INGR_EN ;
 int FRF_BZ_RX_IP_HASH ;
 int FRF_BZ_RX_USR_BUF_SIZE ;
 int FRF_BZ_TX_FLUSH_MIN_LEN_EN ;
 int FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE ;
 int FRF_CZ_RX_RSS_IPV6_THASH_ENABLE ;
 scalar_t__ FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN ;
 int FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH ;
 int FRF_CZ_TX_FILTER_EN_BIT ;
 int FRF_CZ_USREV_DIS ;
 int FR_AZ_RX_CFG ;
 int FR_AZ_TX_CFG ;
 int FR_AZ_TX_RESERVED ;
 int FR_BZ_DP_CTRL ;
 int FR_BZ_RX_RSS_TKEY ;
 int FR_CZ_RX_RSS_IPV6_REG1 ;
 int FR_CZ_RX_RSS_IPV6_REG2 ;
 int FR_CZ_RX_RSS_IPV6_REG3 ;
 int FR_CZ_USR_EV_CFG ;
 int efx_mcdi_handle_assertion (struct efx_nic*) ;
 int efx_mcdi_log_ctrl (struct efx_nic*,int,int,int ) ;
 int efx_nic_init_common (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static int siena_init_nic(struct efx_nic *efx)
{
 efx_oword_t temp;
 int rc;


 rc = efx_mcdi_handle_assertion(efx);
 if (rc)
  return rc;


 efx_reado(efx, &temp, FR_AZ_TX_RESERVED);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_TX_FLUSH_MIN_LEN_EN, 1);
 efx_writeo(efx, &temp, FR_AZ_TX_RESERVED);




 efx_reado(efx, &temp, FR_AZ_TX_CFG);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_NO_EOP_DISC_EN, 0);
 EFX_SET_OWORD_FIELD(temp, FRF_CZ_TX_FILTER_EN_BIT, 1);
 efx_writeo(efx, &temp, FR_AZ_TX_CFG);

 efx_reado(efx, &temp, FR_AZ_RX_CFG);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_DESC_PUSH_EN, 0);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_INGR_EN, 1);



 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_HASH_INSRT_HDR, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_HASH_ALG, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_IP_HASH, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_USR_BUF_SIZE,
       EFX_RX_USR_BUF_SIZE >> 5);
 efx_writeo(efx, &temp, FR_AZ_RX_CFG);


 memcpy(&temp, efx->rx_hash_key, sizeof(temp));
 efx_writeo(efx, &temp, FR_BZ_RX_RSS_TKEY);


 BUILD_BUG_ON(sizeof(efx->rx_hash_key) <
       2 * sizeof(temp) + FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH / 8 ||
       FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN != 0);
 memcpy(&temp, efx->rx_hash_key, sizeof(temp));
 efx_writeo(efx, &temp, FR_CZ_RX_RSS_IPV6_REG1);
 memcpy(&temp, efx->rx_hash_key + sizeof(temp), sizeof(temp));
 efx_writeo(efx, &temp, FR_CZ_RX_RSS_IPV6_REG2);
 EFX_POPULATE_OWORD_2(temp, FRF_CZ_RX_RSS_IPV6_THASH_ENABLE, 1,
        FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE, 1);
 memcpy(&temp, efx->rx_hash_key + 2 * sizeof(temp),
        FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH / 8);
 efx_writeo(efx, &temp, FR_CZ_RX_RSS_IPV6_REG3);


 rc = efx_mcdi_log_ctrl(efx, 1, 0, 0);
 if (rc)
  return rc;


 EFX_POPULATE_OWORD_1(temp, FRF_BZ_FLS_EVQ_ID, 0);
 efx_writeo(efx, &temp, FR_BZ_DP_CTRL);

 EFX_POPULATE_OWORD_1(temp, FRF_CZ_USREV_DIS, 1);
 efx_writeo(efx, &temp, FR_CZ_USR_EV_CFG);

 efx_nic_init_common(efx);
 return 0;
}
