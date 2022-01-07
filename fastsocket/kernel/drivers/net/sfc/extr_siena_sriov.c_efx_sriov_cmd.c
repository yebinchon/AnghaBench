
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int vf_count; } ;


 int EFX_VI_BASE ;
 unsigned int EFX_VI_SCALE_MAX ;
 int EIO ;
 int EOPNOTSUPP ;
 unsigned int MCDI_DWORD (int *,int ) ;
 int MCDI_SET_DWORD (int *,int ,int) ;
 int MC_CMD_SRIOV ;
 int MC_CMD_SRIOV_IN_LEN ;
 int MC_CMD_SRIOV_OUT_LEN ;
 int SRIOV_IN_ENABLE ;
 int SRIOV_IN_VF_COUNT ;
 int SRIOV_IN_VI_BASE ;
 int SRIOV_OUT_VF_TOTAL ;
 int SRIOV_OUT_VI_SCALE ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int,int *,int,size_t*) ;

__attribute__((used)) static int efx_sriov_cmd(struct efx_nic *efx, bool enable,
    unsigned *vi_scale_out, unsigned *vf_total_out)
{
 u8 inbuf[MC_CMD_SRIOV_IN_LEN];
 u8 outbuf[MC_CMD_SRIOV_OUT_LEN];
 unsigned vi_scale, vf_total;
 size_t outlen;
 int rc;

 MCDI_SET_DWORD(inbuf, SRIOV_IN_ENABLE, enable ? 1 : 0);
 MCDI_SET_DWORD(inbuf, SRIOV_IN_VI_BASE, EFX_VI_BASE);
 MCDI_SET_DWORD(inbuf, SRIOV_IN_VF_COUNT, efx->vf_count);

 rc = efx_mcdi_rpc(efx, MC_CMD_SRIOV, inbuf, MC_CMD_SRIOV_IN_LEN,
     outbuf, MC_CMD_SRIOV_OUT_LEN, &outlen);
 if (rc)
  return rc;
 if (outlen < MC_CMD_SRIOV_OUT_LEN)
  return -EIO;

 vf_total = MCDI_DWORD(outbuf, SRIOV_OUT_VF_TOTAL);
 vi_scale = MCDI_DWORD(outbuf, SRIOV_OUT_VI_SCALE);
 if (vi_scale > EFX_VI_SCALE_MAX)
  return -EOPNOTSUPP;

 if (vi_scale_out)
  *vi_scale_out = vi_scale;
 if (vf_total_out)
  *vf_total_out = vf_total;

 return 0;
}
