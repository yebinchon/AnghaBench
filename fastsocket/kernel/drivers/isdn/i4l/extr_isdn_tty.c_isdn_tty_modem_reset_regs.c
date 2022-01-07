
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int* mdmreg; int* msn; int* lmsn; scalar_t__ mdmcmdl; int plmsn; int pmsn; int profile; } ;
struct TYPE_6__ {int xmit_size; TYPE_2__ emu; } ;
typedef TYPE_1__ modem_info ;
typedef TYPE_2__ atemu ;


 int BIT_DTRR ;
 int ISDN_LMSNLEN ;
 int ISDN_MODEM_NUMREG ;
 int ISDN_MSNLEN ;
 size_t REG_DTRR ;
 size_t REG_PSIZE ;
 int isdn_tty_modem_reset_faxpar (TYPE_1__*) ;
 int isdn_tty_modem_reset_vpar (TYPE_2__*) ;
 int memcpy (int*,int ,int ) ;

__attribute__((used)) static void
isdn_tty_modem_reset_regs(modem_info * info, int force)
{
 atemu *m = &info->emu;
 if ((m->mdmreg[REG_DTRR] & BIT_DTRR) || force) {
  memcpy(m->mdmreg, m->profile, ISDN_MODEM_NUMREG);
  memcpy(m->msn, m->pmsn, ISDN_MSNLEN);
  memcpy(m->lmsn, m->plmsn, ISDN_LMSNLEN);
  info->xmit_size = m->mdmreg[REG_PSIZE] * 16;
 }






 m->mdmcmdl = 0;
}
