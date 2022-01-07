
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct efx_nic {int dummy; } ;
struct efx_memcpy_req {unsigned int to_rid; int to_addr; unsigned int from_rid; int from_addr; unsigned int length; int * from_buf; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int MCDI_CTL_SDU_LEN_MAX ;
 int MCDI_SET_DWORD (int *,int ,unsigned int) ;
 int MC_CMD_MEMCPY ;
 unsigned int MC_CMD_MEMCPY_IN_LEN (unsigned int) ;
 int MC_CMD_MEMCPY_IN_RECORD_LEN ;
 unsigned int MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE ;
 int MEMCPY_IN_RECORD ;
 int MEMCPY_RECORD_TYPEDEF_FROM_ADDR_HI ;
 int MEMCPY_RECORD_TYPEDEF_FROM_ADDR_LO ;
 int MEMCPY_RECORD_TYPEDEF_FROM_RID ;
 int MEMCPY_RECORD_TYPEDEF_LENGTH ;
 int MEMCPY_RECORD_TYPEDEF_TO_ADDR_HI ;
 int MEMCPY_RECORD_TYPEDEF_TO_ADDR_LO ;
 int MEMCPY_RECORD_TYPEDEF_TO_RID ;
 scalar_t__ WARN_ON (int) ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,unsigned int,int *,int ,int *) ;
 int kfree (int *) ;
 int * kzalloc (unsigned int,int ) ;
 int mb () ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static int efx_sriov_memcpy(struct efx_nic *efx, struct efx_memcpy_req *req,
       unsigned int count)
{
 u8 *inbuf, *record;
 unsigned int used;
 u32 from_rid, from_hi, from_lo;
 int rc;

 mb();

 used = MC_CMD_MEMCPY_IN_LEN(count);
 if (WARN_ON(used > MCDI_CTL_SDU_LEN_MAX))
  return -ENOBUFS;


 inbuf = kzalloc(MCDI_CTL_SDU_LEN_MAX, GFP_KERNEL);
 if (inbuf == ((void*)0))
  return -ENOMEM;

 record = inbuf;
 MCDI_SET_DWORD(record, MEMCPY_IN_RECORD, count);
 while (count-- > 0) {
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_TO_RID,
          req->to_rid);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_TO_ADDR_LO,
          (u32)req->to_addr);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_TO_ADDR_HI,
          (u32)(req->to_addr >> 32));
  if (req->from_buf == ((void*)0)) {
   from_rid = req->from_rid;
   from_lo = (u32)req->from_addr;
   from_hi = (u32)(req->from_addr >> 32);
  } else {
   if (WARN_ON(used + req->length > MCDI_CTL_SDU_LEN_MAX)) {
    rc = -ENOBUFS;
    goto out;
   }

   from_rid = MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE;
   from_lo = used;
   from_hi = 0;
   memcpy(inbuf + used, req->from_buf, req->length);
   used += req->length;
  }

  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_FROM_RID, from_rid);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_FROM_ADDR_LO,
          from_lo);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_FROM_ADDR_HI,
          from_hi);
  MCDI_SET_DWORD(record, MEMCPY_RECORD_TYPEDEF_LENGTH,
          req->length);

  ++req;
  record += MC_CMD_MEMCPY_IN_RECORD_LEN;
 }

 rc = efx_mcdi_rpc(efx, MC_CMD_MEMCPY, inbuf, used, ((void*)0), 0, ((void*)0));
out:
 kfree(inbuf);

 mb();

 return rc;
}
