
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ps; unsigned long windowstart; scalar_t__ a; int sar; int lcount; int lend; int lbeg; int pc; } ;
typedef TYPE_1__ xtensa_gregset_t ;
struct pt_regs {unsigned long windowbase; unsigned long windowstart; unsigned long wmask; int ps; scalar_t__ areg; int sar; int lcount; int lend; int lbeg; int pc; } ;
typedef int elfregs ;


 int PS_EXCM_BIT ;
 unsigned long WSBITS ;
 unsigned long XCHAL_NUM_AREGS ;
 int memcpy (scalar_t__,scalar_t__,unsigned long) ;
 int memset (TYPE_1__*,int ,int) ;

void xtensa_elf_core_copy_regs (xtensa_gregset_t *elfregs, struct pt_regs *regs)
{
 unsigned long wb, ws, wm;
 int live, last;

 wb = regs->windowbase;
 ws = regs->windowstart;
 wm = regs->wmask;
 ws = ((ws >> wb) | (ws << (WSBITS - wb))) & ((1 << WSBITS) - 1);



 memset(elfregs, 0, sizeof (elfregs));





 elfregs->pc = regs->pc;
 elfregs->ps = (regs->ps & ~(1 << PS_EXCM_BIT));
 elfregs->lbeg = regs->lbeg;
 elfregs->lend = regs->lend;
 elfregs->lcount = regs->lcount;
 elfregs->sar = regs->sar;
 elfregs->windowstart = ws;

 live = (wm & 2) ? 4 : (wm & 4) ? 8 : (wm & 8) ? 12 : 16;
 last = XCHAL_NUM_AREGS - (wm >> 4) * 4;
 memcpy(elfregs->a, regs->areg, live * 4);
 memcpy(elfregs->a + last, regs->areg + last, (wm >> 4) * 16);
}
