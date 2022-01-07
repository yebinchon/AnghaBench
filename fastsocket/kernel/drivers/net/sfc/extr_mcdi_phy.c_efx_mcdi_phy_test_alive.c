
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;
typedef int outbuf ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int GET_PHY_STATE_OUT_STATE ;
 scalar_t__ MCDI_DWORD (int *,int ) ;
 int MC_CMD_GET_PHY_STATE ;
 scalar_t__ MC_CMD_GET_PHY_STATE_IN_LEN ;
 int MC_CMD_GET_PHY_STATE_OUT_LEN ;
 scalar_t__ MC_CMD_PHY_STATE_OK ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int ,int *,int,size_t*) ;

__attribute__((used)) static int efx_mcdi_phy_test_alive(struct efx_nic *efx)
{
 u8 outbuf[MC_CMD_GET_PHY_STATE_OUT_LEN];
 size_t outlen;
 int rc;

 BUILD_BUG_ON(MC_CMD_GET_PHY_STATE_IN_LEN != 0);

 rc = efx_mcdi_rpc(efx, MC_CMD_GET_PHY_STATE, ((void*)0), 0,
     outbuf, sizeof(outbuf), &outlen);
 if (rc)
  return rc;

 if (outlen < MC_CMD_GET_PHY_STATE_OUT_LEN)
  return -EIO;
 if (MCDI_DWORD(outbuf, GET_PHY_STATE_OUT_STATE) != MC_CMD_PHY_STATE_OK)
  return -EINVAL;

 return 0;
}
