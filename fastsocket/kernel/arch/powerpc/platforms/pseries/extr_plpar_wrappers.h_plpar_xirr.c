
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_XIRR ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall (int ,unsigned long*) ;

__attribute__((used)) static inline long plpar_xirr(unsigned long *xirr_ret)
{
 long rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

 rc = plpar_hcall(H_XIRR, retbuf);

 *xirr_ret = retbuf[0];

 return rc;
}
