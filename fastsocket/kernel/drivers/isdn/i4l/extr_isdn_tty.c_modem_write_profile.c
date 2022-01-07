
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lmsn; int plmsn; int msn; int pmsn; int mdmreg; int profile; } ;
typedef TYPE_1__ atemu ;
struct TYPE_5__ {scalar_t__ profd; } ;


 int ISDN_LMSNLEN ;
 int ISDN_MODEM_NUMREG ;
 int ISDN_MSNLEN ;
 int SIGIO ;
 TYPE_3__* dev ;
 int memcpy (int ,int ,int ) ;
 int send_sig (int ,scalar_t__,int) ;

__attribute__((used)) static void
modem_write_profile(atemu * m)
{
 memcpy(m->profile, m->mdmreg, ISDN_MODEM_NUMREG);
 memcpy(m->pmsn, m->msn, ISDN_MSNLEN);
 memcpy(m->plmsn, m->lmsn, ISDN_LMSNLEN);
 if (dev->profd)
  send_sig(SIGIO, dev->profd, 1);
}
