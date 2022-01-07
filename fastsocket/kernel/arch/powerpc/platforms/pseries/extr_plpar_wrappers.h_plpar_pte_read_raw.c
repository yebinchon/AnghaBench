
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_READ ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall_raw (int ,unsigned long*,unsigned long,unsigned long) ;

__attribute__((used)) static inline long plpar_pte_read_raw(unsigned long flags, unsigned long ptex,
  unsigned long *old_pteh_ret, unsigned long *old_ptel_ret)
{
 long rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

 rc = plpar_hcall_raw(H_READ, retbuf, flags, ptex);

 *old_pteh_ret = retbuf[0];
 *old_ptel_ret = retbuf[1];

 return rc;
}
