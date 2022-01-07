
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dbg_fwsave_len; int dbg_fwsave; scalar_t__ dbg_fwsave_once; } ;


 int bfa_nw_ioc_debug_fwtrc (struct bfa_ioc*,int ,int*) ;

__attribute__((used)) static void
bfa_nw_ioc_debug_save_ftrc(struct bfa_ioc *ioc)
{
 int tlen;

 if (ioc->dbg_fwsave_once) {
  ioc->dbg_fwsave_once = 0;
  if (ioc->dbg_fwsave_len) {
   tlen = ioc->dbg_fwsave_len;
   bfa_nw_ioc_debug_fwtrc(ioc, ioc->dbg_fwsave, &tlen);
  }
 }
}
