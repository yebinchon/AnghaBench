
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; int fs; int flow_type; } ;
struct efx_nic {int n_rx_channels; } ;
typedef int s32 ;




 int EFX_FILTER_PRI_MANUAL ;
 unsigned int EFX_REV_FALCON_B0 ;
 unsigned int EFX_REV_SIENA_A0 ;
 int EOPNOTSUPP ;







 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;
 int RX_CLS_LOC_SPECIAL ;






 int efx_ethtool_get_class_rule (struct efx_nic*,int *) ;
 int efx_filter_count_rx_used (struct efx_nic*,int ) ;
 void* efx_filter_get_rx_id_limit (struct efx_nic*) ;
 int efx_filter_get_rx_ids (struct efx_nic*,int ,int *,int) ;
 unsigned int efx_nic_rev (struct efx_nic*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
efx_ethtool_get_rxnfc(struct net_device *net_dev,
        struct ethtool_rxnfc *info, void *varg)
{
 u32 *rule_locs = (u32 *)varg;
 struct efx_nic *efx = netdev_priv(net_dev);

 switch (info->cmd) {
 case 136:
  info->data = efx->n_rx_channels;
  return 0;

 case 137: {
  unsigned min_revision = 0;

  info->data = 0;
  switch (info->flow_type) {
  case 131:
   info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

  case 129:
  case 133:
  case 142:
  case 135:
   info->data |= RXH_IP_SRC | RXH_IP_DST;
   min_revision = EFX_REV_FALCON_B0;
   break;
  case 130:
   info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;

  case 128:
  case 132:
  case 141:
  case 134:
   info->data |= RXH_IP_SRC | RXH_IP_DST;
   min_revision = EFX_REV_SIENA_A0;
   break;
  default:
   break;
  }
  if (efx_nic_rev(efx) < min_revision)
   info->data = 0;
  return 0;
 }

 case 139:
  info->data = efx_filter_get_rx_id_limit(efx);
  if (info->data == 0)
   return -EOPNOTSUPP;
  info->data |= RX_CLS_LOC_SPECIAL;
  info->rule_cnt =
   efx_filter_count_rx_used(efx, EFX_FILTER_PRI_MANUAL);
  return 0;

 case 138:
  if (efx_filter_get_rx_id_limit(efx) == 0)
   return -EOPNOTSUPP;
  return efx_ethtool_get_class_rule(efx, &info->fs);

 case 140: {
  s32 rc;
  info->data = efx_filter_get_rx_id_limit(efx);
  if (info->data == 0)
   return -EOPNOTSUPP;
  rc = efx_filter_get_rx_ids(efx, EFX_FILTER_PRI_MANUAL,
        rule_locs, info->rule_cnt);
  if (rc < 0)
   return rc;
  info->rule_cnt = rc;
  return 0;
 }

 default:
  return -EOPNOTSUPP;
 }
}
