
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned short uint ;
struct UnixRup {int RupLock; struct CmdBlk* CmdsWaitingP; TYPE_1__* RupP; struct CmdBlk* CmdPendingP; } ;
struct PKT {int dummy; } ;
struct Host {int Caddr; int (* Copy ) (TYPE_2__*,int ,int) ;struct UnixRup* UnixRups; } ;
struct TYPE_4__ {int * data; } ;
struct CmdBlk {int (* PreFuncP ) (int ,struct CmdBlk*) ;struct CmdBlk* NextP; TYPE_2__ Packet; int PreArg; } ;
struct TYPE_3__ {int txcontrol; int txpkt; } ;


 scalar_t__ LINKS_PER_UNIT ;
 scalar_t__ MAX_RUP ;
 int RIOFreeCmdBlk (struct CmdBlk*) ;
 int RIO_DEBUG_CMD ;
 int RIO_FAIL ;
 int RIO_PTR (int ,scalar_t__) ;
 int TX_PACKET_READY ;
 scalar_t__ TX_RUP_INACTIVE ;
 scalar_t__ readw (int *) ;
 int rio_dprintk (int ,char*,...) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct CmdBlk*) ;
 int stub2 (TYPE_2__*,int ,int) ;
 int writew (int ,int *) ;

int RIOQueueCmdBlk(struct Host *HostP, uint Rup, struct CmdBlk *CmdBlkP)
{
 struct CmdBlk **Base;
 struct UnixRup *UnixRupP;
 unsigned long flags;

 if (Rup >= (unsigned short) (MAX_RUP + LINKS_PER_UNIT)) {
  rio_dprintk(RIO_DEBUG_CMD, "Illegal rup number %d in RIOQueueCmdBlk\n", Rup);
  RIOFreeCmdBlk(CmdBlkP);
  return RIO_FAIL;
 }

 UnixRupP = &HostP->UnixRups[Rup];

 rio_spin_lock_irqsave(&UnixRupP->RupLock, flags);





 if ((UnixRupP->CmdsWaitingP == ((void*)0)) && (UnixRupP->CmdPendingP == ((void*)0)) && (readw(&UnixRupP->RupP->txcontrol) == TX_RUP_INACTIVE) && (CmdBlkP->PreFuncP ? (*CmdBlkP->PreFuncP) (CmdBlkP->PreArg, CmdBlkP)
                      : 1)) {
  rio_dprintk(RIO_DEBUG_CMD, "RUP inactive-placing command straight on. Cmd byte is 0x%x\n", CmdBlkP->Packet.data[0]);




  HostP->Copy(&CmdBlkP->Packet, RIO_PTR(HostP->Caddr, readw(&UnixRupP->RupP->txpkt)), sizeof(struct PKT));




  UnixRupP->CmdPendingP = CmdBlkP;




  writew(TX_PACKET_READY, &UnixRupP->RupP->txcontrol);

  rio_spin_unlock_irqrestore(&UnixRupP->RupLock, flags);

  return 0;
 }
 rio_dprintk(RIO_DEBUG_CMD, "RUP active - en-queing\n");

 if (UnixRupP->CmdsWaitingP != ((void*)0))
  rio_dprintk(RIO_DEBUG_CMD, "Rup active - command waiting\n");
 if (UnixRupP->CmdPendingP != ((void*)0))
  rio_dprintk(RIO_DEBUG_CMD, "Rup active - command pending\n");
 if (readw(&UnixRupP->RupP->txcontrol) != TX_RUP_INACTIVE)
  rio_dprintk(RIO_DEBUG_CMD, "Rup active - command rup not ready\n");

 Base = &UnixRupP->CmdsWaitingP;

 rio_dprintk(RIO_DEBUG_CMD, "First try to queue cmdblk %p at %p\n", CmdBlkP, Base);

 while (*Base) {
  rio_dprintk(RIO_DEBUG_CMD, "Command cmdblk %p here\n", *Base);
  Base = &((*Base)->NextP);
  rio_dprintk(RIO_DEBUG_CMD, "Now try to queue cmd cmdblk %p at %p\n", CmdBlkP, Base);
 }

 rio_dprintk(RIO_DEBUG_CMD, "Will queue cmdblk %p at %p\n", CmdBlkP, Base);

 *Base = CmdBlkP;

 CmdBlkP->NextP = ((void*)0);

 rio_spin_unlock_irqrestore(&UnixRupP->RupLock, flags);

 return 0;
}
