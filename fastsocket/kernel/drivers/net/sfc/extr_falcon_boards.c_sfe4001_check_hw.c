
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {int xmac_poll_required; } ;
struct efx_nic {int phy_mode; struct falcon_nic_data* nic_data; } ;
typedef int s32 ;
struct TYPE_2__ {int ioexp_client; } ;


 scalar_t__ EFX_WORKAROUND_7884 (struct efx_nic*) ;
 int EIO ;
 int ERANGE ;
 int P1_AFE_PWD_LBN ;
 int P1_DSP_PWD25_LBN ;
 int P1_IN ;
 int PHY_MODE_OFF ;
 TYPE_1__* falcon_board (struct efx_nic*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int sfe4001_poweroff (struct efx_nic*) ;

__attribute__((used)) static int sfe4001_check_hw(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 s32 status;


 if (EFX_WORKAROUND_7884(efx) && !nic_data->xmac_poll_required)
  return 0;
 status = i2c_smbus_read_byte_data(falcon_board(efx)->ioexp_client, P1_IN);
 if (status >= 0 &&
     (status & ((1 << P1_AFE_PWD_LBN) | (1 << P1_DSP_PWD25_LBN))) != 0)
  return 0;


 sfe4001_poweroff(efx);
 efx->phy_mode = PHY_MODE_OFF;

 return (status < 0) ? -EIO : -ERANGE;
}
