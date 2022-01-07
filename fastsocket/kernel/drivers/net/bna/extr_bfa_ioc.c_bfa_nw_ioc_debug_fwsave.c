
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dbg_fwsave_len; int dbg_fwsave; } ;


 int BFA_STATUS_ENOFSAVE ;
 int BFA_STATUS_OK ;
 int memcpy (void*,int ,int) ;

int
bfa_nw_ioc_debug_fwsave(struct bfa_ioc *ioc, void *trcdata, int *trclen)
{
 int tlen;

 if (ioc->dbg_fwsave_len == 0)
  return BFA_STATUS_ENOFSAVE;

 tlen = *trclen;
 if (tlen > ioc->dbg_fwsave_len)
  tlen = ioc->dbg_fwsave_len;

 memcpy(trcdata, ioc->dbg_fwsave, tlen);
 *trclen = tlen;
 return BFA_STATUS_OK;
}
