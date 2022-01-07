
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;


 int efx_mcdi_rpc_finish (struct efx_nic*,unsigned int,size_t,int *,size_t,size_t*) ;
 int efx_mcdi_rpc_start (struct efx_nic*,unsigned int,int const*,size_t) ;

int efx_mcdi_rpc(struct efx_nic *efx, unsigned cmd,
   const u8 *inbuf, size_t inlen, u8 *outbuf, size_t outlen,
   size_t *outlen_actual)
{
 efx_mcdi_rpc_start(efx, cmd, inbuf, inlen);
 return efx_mcdi_rpc_finish(efx, cmd, inlen,
       outbuf, outlen, outlen_actual);
}
