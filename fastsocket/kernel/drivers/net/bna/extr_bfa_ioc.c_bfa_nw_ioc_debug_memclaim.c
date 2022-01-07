
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ auto_recover; } ;
struct bfa_ioc {TYPE_1__ iocpf; int dbg_fwsave_len; void* dbg_fwsave; } ;


 int BNA_DBG_FWTRC_LEN ;

void
bfa_nw_ioc_debug_memclaim(struct bfa_ioc *ioc, void *dbg_fwsave)
{
 ioc->dbg_fwsave = dbg_fwsave;
 ioc->dbg_fwsave_len = ioc->iocpf.auto_recover ? BNA_DBG_FWTRC_LEN : 0;
}
