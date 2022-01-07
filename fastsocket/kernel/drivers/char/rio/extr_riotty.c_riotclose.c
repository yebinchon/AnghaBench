
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_6__ {struct tty_struct* tty; } ;
struct TYPE_7__ {long closing_wait; TYPE_1__ port; } ;
struct Port {int State; scalar_t__ InUse; scalar_t__ TxBufferIn; scalar_t__ TxBufferOut; int PortState; int Config; int portSem; scalar_t__ firstOpen; int closes; scalar_t__ statsGather; int PortNum; int ModemState; TYPE_2__ gs; } ;
struct TYPE_8__ {scalar_t__ RIOHalted; } ;


 int EINTR ;
 int EIO ;
 int HUNDRED_MS ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;
 scalar_t__ NOT_INUSE ;
 int PORT_ISOPEN ;
 int RIOC_CLOSE ;
 int RIOC_FCLOSE ;
 int RIOC_MSVR1_CD ;
 int RIOClearUp (struct Port*) ;
 scalar_t__ RIODelay (struct Port*,int) ;
 scalar_t__ RIODelay_ni (struct Port*,int) ;
 int RIOPreemptiveCmd (TYPE_3__*,struct Port*,int ) ;
 scalar_t__ RIOShortCommand (TYPE_3__*,struct Port*,int ,int,int ) ;
 int RIO_CARR_ON ;
 int RIO_CLOSING ;
 int RIO_CTSFLOW ;
 int RIO_DEBUG_TTY ;
 int RIO_DELETED ;
 int RIO_DYNOROD ;
 scalar_t__ RIO_FAIL ;
 int RIO_LOPEN ;
 int RIO_MOPEN ;
 int RIO_RTSFLOW ;
 unsigned long jiffies ;
 TYPE_3__* p ;
 int rio_dprintk (int ,char*,...) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int riotclose(void *ptr)
{
 struct Port *PortP = ptr;
 int deleted = 0;
 int try = -1;
 int repeat_this = -1;

 unsigned long end_time;
 struct tty_struct *tty;
 unsigned long flags;
 int rv = 0;

 rio_dprintk(RIO_DEBUG_TTY, "port close SysPort %d\n", PortP->PortNum);


 rio_dprintk(RIO_DEBUG_TTY, "Port is at address %p\n", PortP);

 tty = PortP->gs.port.tty;
 rio_dprintk(RIO_DEBUG_TTY, "TTY is at address %p\n", tty);

 if (PortP->gs.closing_wait)
  end_time = jiffies + PortP->gs.closing_wait;
 else
  end_time = jiffies + MAX_SCHEDULE_TIMEOUT;

 rio_spin_lock_irqsave(&PortP->portSem, flags);





 PortP->State |= RIO_CLOSING;

 if ((PortP->State & RIO_DELETED)) {
  rio_dprintk(RIO_DEBUG_TTY, "Close on deleted RTA\n");
  deleted = 1;
 }

 if (p->RIOHalted) {
  RIOClearUp(PortP);
  rv = -EIO;
  goto close_end;
 }

 rio_dprintk(RIO_DEBUG_TTY, "Clear bits\n");



 PortP->State &= ~RIO_MOPEN;
 PortP->State &= ~RIO_CARR_ON;
 PortP->ModemState &= ~RIOC_MSVR1_CD;







 if ((PortP->State & (RIO_LOPEN | RIO_MOPEN))) {




  rio_dprintk(RIO_DEBUG_TTY, "Channel %d still open !\n", PortP->PortNum);
  PortP->State &= ~RIO_CLOSING;
  if (PortP->firstOpen)
   PortP->firstOpen--;
  rio_spin_unlock_irqrestore(&PortP->portSem, flags);
  return -EIO;
 }

 rio_dprintk(RIO_DEBUG_TTY, "Closing down - everything must go!\n");

 PortP->State &= ~RIO_DYNOROD;






 rio_dprintk(RIO_DEBUG_TTY, "Timeout 1 starts\n");

 if (!deleted)
  while ((PortP->InUse != NOT_INUSE) && !p->RIOHalted && (PortP->TxBufferIn != PortP->TxBufferOut)) {
   if (repeat_this-- <= 0) {
    rv = -EINTR;
    rio_dprintk(RIO_DEBUG_TTY, "Waiting for not idle closed broken by signal\n");
    RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);
    goto close_end;
   }
   rio_dprintk(RIO_DEBUG_TTY, "Calling timeout to flush in closing\n");
   rio_spin_unlock_irqrestore(&PortP->portSem, flags);
   if (RIODelay_ni(PortP, HUNDRED_MS * 10) == RIO_FAIL) {
    rio_dprintk(RIO_DEBUG_TTY, "RTA EINTR in delay \n");
    rv = -EINTR;
    rio_spin_lock_irqsave(&PortP->portSem, flags);
    goto close_end;
   }
   rio_spin_lock_irqsave(&PortP->portSem, flags);
  }

 PortP->TxBufferIn = PortP->TxBufferOut = 0;
 repeat_this = 0xff;

 PortP->InUse = 0;
 if ((PortP->State & (RIO_LOPEN | RIO_MOPEN))) {




  rio_dprintk(RIO_DEBUG_TTY, "Channel %d re-open!\n", PortP->PortNum);
  PortP->State &= ~RIO_CLOSING;
  rio_spin_unlock_irqrestore(&PortP->portSem, flags);
  if (PortP->firstOpen)
   PortP->firstOpen--;
  return -EIO;
 }

 if (p->RIOHalted) {
  RIOClearUp(PortP);
  goto close_end;
 }


 rio_spin_unlock_irqrestore(&PortP->portSem, flags);

 if (RIOShortCommand(p, PortP, RIOC_CLOSE, 1, 0) == RIO_FAIL) {
  RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);
  rio_spin_lock_irqsave(&PortP->portSem, flags);
  goto close_end;
 }

 if (!deleted)
  while (try && (PortP->PortState & PORT_ISOPEN)) {
   try--;
   if (time_after(jiffies, end_time)) {
    rio_dprintk(RIO_DEBUG_TTY, "Run out of tries - force the bugger shut!\n");
    RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);
    break;
   }
   rio_dprintk(RIO_DEBUG_TTY, "Close: PortState:ISOPEN is %d\n", PortP->PortState & PORT_ISOPEN);

   if (p->RIOHalted) {
    RIOClearUp(PortP);
    rio_spin_lock_irqsave(&PortP->portSem, flags);
    goto close_end;
   }
   if (RIODelay(PortP, HUNDRED_MS) == RIO_FAIL) {
    rio_dprintk(RIO_DEBUG_TTY, "RTA EINTR in delay \n");
    RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);
    break;
   }
  }
 rio_spin_lock_irqsave(&PortP->portSem, flags);
 rio_dprintk(RIO_DEBUG_TTY, "Close: try was %d on completion\n", try);







 PortP->Config &= ~(RIO_CTSFLOW | RIO_RTSFLOW);




 if (PortP->statsGather)
  PortP->closes++;

close_end:





 PortP->State &= ~(RIO_CLOSING | RIO_DELETED);
 if (PortP->firstOpen)
  PortP->firstOpen--;
 rio_spin_unlock_irqrestore(&PortP->portSem, flags);
 rio_dprintk(RIO_DEBUG_TTY, "Return from close\n");
 return rv;
}
