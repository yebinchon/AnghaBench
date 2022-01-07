
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;
typedef int outbuf ;
typedef int inbuf ;


 int EIO ;
 int MCDI_DWORD (int *,int ) ;
 int MCDI_SET_DWORD (int *,int ,unsigned int) ;
 int MC_CMD_NVRAM_TEST ;
 int MC_CMD_NVRAM_TEST_IN_LEN ;

 int MC_CMD_NVRAM_TEST_OUT_LEN ;

 int NVRAM_TEST_IN_TYPE ;
 int NVRAM_TEST_OUT_RESULT ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int,int *,int,int *) ;

__attribute__((used)) static int efx_mcdi_nvram_test(struct efx_nic *efx, unsigned int type)
{
 u8 inbuf[MC_CMD_NVRAM_TEST_IN_LEN];
 u8 outbuf[MC_CMD_NVRAM_TEST_OUT_LEN];
 int rc;

 MCDI_SET_DWORD(inbuf, NVRAM_TEST_IN_TYPE, type);

 rc = efx_mcdi_rpc(efx, MC_CMD_NVRAM_TEST, inbuf, sizeof(inbuf),
     outbuf, sizeof(outbuf), ((void*)0));
 if (rc)
  return rc;

 switch (MCDI_DWORD(outbuf, NVRAM_TEST_OUT_RESULT)) {
 case 128:
 case 129:
  return 0;
 default:
  return -EIO;
 }
}
