
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct IsdnCardState {int lock; int (* writeisac ) (struct IsdnCardState*,int ,int) ;} ;
struct TYPE_4__ {scalar_t__ command; int arg; } ;
typedef TYPE_1__ isdn_ctrl ;


 int ISAC_CMDR ;
 int ISAC_MASK ;
 scalar_t__ ISDN_CMD_IOCTL ;
 int ISURF_ARCOFI_RESET ;
 int ISURF_ISAC_RESET ;
 int ISURF_ISAR_EA ;
 int initisac (struct IsdnCardState*) ;
 int isar_auxcmd (struct IsdnCardState*,TYPE_1__*) ;
 int reset_isurf (struct IsdnCardState*,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;

__attribute__((used)) static int
isurf_auxcmd(struct IsdnCardState *cs, isdn_ctrl *ic) {
 int ret;
 u_long flags;

 if ((ic->command == ISDN_CMD_IOCTL) && (ic->arg == 9)) {
  ret = isar_auxcmd(cs, ic);
  spin_lock_irqsave(&cs->lock, flags);
  if (!ret) {
   reset_isurf(cs, ISURF_ISAR_EA | ISURF_ISAC_RESET |
    ISURF_ARCOFI_RESET);
   initisac(cs);
   cs->writeisac(cs, ISAC_MASK, 0);
   cs->writeisac(cs, ISAC_CMDR, 0x41);
  }
  spin_unlock_irqrestore(&cs->lock, flags);
  return(ret);
 }
 return(isar_auxcmd(cs, ic));
}
