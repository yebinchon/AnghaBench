
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct efx_nic {scalar_t__ phy_type; } ;
typedef int efx_dword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_DWORD_0 ;
 int EFX_DWORD_FIELD (int ,int ) ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 scalar_t__ MCDI_DWORD (int *,int ) ;
 int * MCDI_PTR (int *,int ) ;
 int MCDI_SET_DWORD (int *,int ,unsigned int) ;
 unsigned int MC_CMD_PHY_BIST_CABLE_LONG ;
 unsigned int MC_CMD_PHY_BIST_CABLE_SHORT ;
 int MC_CMD_POLL_BIST ;
 scalar_t__ MC_CMD_POLL_BIST_IN_LEN ;
 size_t MC_CMD_POLL_BIST_OUT_SFT9001_LEN ;
 scalar_t__ MC_CMD_POLL_BIST_PASSED ;
 scalar_t__ MC_CMD_POLL_BIST_RUNNING ;
 int MC_CMD_START_BIST ;
 int MC_CMD_START_BIST_IN_LEN ;
 scalar_t__ MC_CMD_START_BIST_OUT_LEN ;
 scalar_t__ PHY_TYPE_SFT9001B ;
 int POLL_BIST_OUT_RESULT ;
 int POLL_BIST_OUT_SFT9001_CABLE_LENGTH_A ;
 int START_BIST_IN_TYPE ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int ,int *,int,size_t*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int msleep (int) ;

__attribute__((used)) static int efx_mcdi_bist(struct efx_nic *efx, unsigned int bist_mode,
    int *results)
{
 unsigned int retry, i, count = 0;
 size_t outlen;
 u32 status;
 u8 *buf, *ptr;
 int rc;

 buf = kzalloc(0x100, GFP_KERNEL);
 if (buf == ((void*)0))
  return -ENOMEM;

 BUILD_BUG_ON(MC_CMD_START_BIST_OUT_LEN != 0);
 MCDI_SET_DWORD(buf, START_BIST_IN_TYPE, bist_mode);
 rc = efx_mcdi_rpc(efx, MC_CMD_START_BIST, buf, MC_CMD_START_BIST_IN_LEN,
     ((void*)0), 0, ((void*)0));
 if (rc)
  goto out;


 for (retry = 0; retry < 100; ++retry) {
  BUILD_BUG_ON(MC_CMD_POLL_BIST_IN_LEN != 0);
  rc = efx_mcdi_rpc(efx, MC_CMD_POLL_BIST, ((void*)0), 0,
      buf, 0x100, &outlen);
  if (rc)
   goto out;

  status = MCDI_DWORD(buf, POLL_BIST_OUT_RESULT);
  if (status != MC_CMD_POLL_BIST_RUNNING)
   goto finished;

  msleep(100);
 }

 rc = -ETIMEDOUT;
 goto out;

finished:
 results[count++] = (status == MC_CMD_POLL_BIST_PASSED) ? 1 : -1;


 if (efx->phy_type == PHY_TYPE_SFT9001B &&
     (bist_mode == MC_CMD_PHY_BIST_CABLE_SHORT ||
      bist_mode == MC_CMD_PHY_BIST_CABLE_LONG)) {
  ptr = MCDI_PTR(buf, POLL_BIST_OUT_SFT9001_CABLE_LENGTH_A);
  if (status == MC_CMD_POLL_BIST_PASSED &&
      outlen >= MC_CMD_POLL_BIST_OUT_SFT9001_LEN) {
   for (i = 0; i < 8; i++) {
    results[count + i] =
     EFX_DWORD_FIELD(((efx_dword_t *)ptr)[i],
       EFX_DWORD_0);
   }
  }
  count += 8;
 }
 rc = count;

out:
 kfree(buf);

 return rc;
}
