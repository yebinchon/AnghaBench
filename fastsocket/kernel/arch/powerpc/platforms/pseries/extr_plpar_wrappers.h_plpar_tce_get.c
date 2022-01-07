
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_GET_TCE ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall (int ,unsigned long*,unsigned long,unsigned long) ;

__attribute__((used)) static inline long plpar_tce_get(unsigned long liobn, unsigned long ioba,
  unsigned long *tce_ret)
{
 long rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];

 rc = plpar_hcall(H_GET_TCE, retbuf, liobn, ioba);

 *tce_ret = retbuf[0];

 return rc;
}
