
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef scalar_t__ uint ;
typedef scalar_t__ ms02nv_uint ;


 scalar_t__ CKSEG1ADDR (scalar_t__) ;
 size_t MS02NV_CSR ;
 scalar_t__ MS02NV_DIAG ;
 scalar_t__ MS02NV_DIAG_SIZE_MASK ;
 scalar_t__ MS02NV_DIAG_SIZE_SHIFT ;
 scalar_t__ MS02NV_ID ;
 scalar_t__ MS02NV_MAGIC ;
 int get_dbe (scalar_t__,scalar_t__*) ;

__attribute__((used)) static inline uint ms02nv_probe_one(ulong addr)
{
 ms02nv_uint *ms02nv_diagp;
 ms02nv_uint *ms02nv_magicp;
 uint ms02nv_diag;
 uint ms02nv_magic;
 size_t size;

 int err;





 ms02nv_diagp = (ms02nv_uint *)(CKSEG1ADDR(addr + MS02NV_DIAG));
 ms02nv_magicp = (ms02nv_uint *)(CKSEG1ADDR(addr + MS02NV_MAGIC));
 err = get_dbe(ms02nv_magic, ms02nv_magicp);
 if (err)
  return 0;
 if (ms02nv_magic != MS02NV_ID)
  return 0;

 ms02nv_diag = *ms02nv_diagp;
 size = (ms02nv_diag & MS02NV_DIAG_SIZE_MASK) << MS02NV_DIAG_SIZE_SHIFT;
 if (size > MS02NV_CSR)
  size = MS02NV_CSR;

 return size;
}
