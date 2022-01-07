
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwtstamp_config {scalar_t__ tx_type; int rx_filter; scalar_t__ flags; } ;
struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_2__ {unsigned int mode; struct hwtstamp_config config; } ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ HWTSTAMP_TX_OFF ;
 scalar_t__ HWTSTAMP_TX_ON ;
 unsigned int MC_CMD_PTP_MODE_V1 ;
 unsigned int MC_CMD_PTP_MODE_V2 ;
 unsigned int MC_CMD_PTP_MODE_V2_ENHANCED ;
 int efx_ptp_change_mode (struct efx_nic*,int,unsigned int) ;

__attribute__((used)) static int efx_ptp_ts_init(struct efx_nic *efx, struct hwtstamp_config *init)
{
 bool enable_wanted = 0;
 unsigned int new_mode;
 int rc;

 if (init->flags)
  return -EINVAL;

 if ((init->tx_type != HWTSTAMP_TX_OFF) &&
     (init->tx_type != HWTSTAMP_TX_ON))
  return -ERANGE;

 new_mode = efx->ptp_data->mode;

 switch (init->rx_filter) {
 case 140:
  break;
 case 138:
 case 137:
 case 139:
  init->rx_filter = 138;
  new_mode = MC_CMD_PTP_MODE_V1;
  enable_wanted = 1;
  break;
 case 130:
 case 129:
 case 131:



  init->rx_filter = 130;
  new_mode = MC_CMD_PTP_MODE_V2_ENHANCED;
  enable_wanted = 1;
  break;
 case 135:
 case 128:
 case 136:
 case 133:
 case 132:
 case 134:

  return -ERANGE;
  break;
 default:
  return -ERANGE;
 }

 if (init->tx_type != HWTSTAMP_TX_OFF)
  enable_wanted = 1;






 rc = efx_ptp_change_mode(efx, enable_wanted, new_mode);
 if ((rc != 0) && (new_mode == MC_CMD_PTP_MODE_V2_ENHANCED))
  rc = efx_ptp_change_mode(efx, enable_wanted, MC_CMD_PTP_MODE_V2);
 if (rc != 0)
  return rc;

 efx->ptp_data->config = *init;

 return 0;
}
