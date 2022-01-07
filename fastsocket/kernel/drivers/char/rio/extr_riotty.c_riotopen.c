
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; struct Port* driver_data; } ;
struct file {int f_flags; } ;
struct TYPE_9__ {int open_wait; struct tty_struct* tty; int count; } ;
struct TYPE_13__ {TYPE_2__ port; int xmit_cnt; } ;
struct Port {size_t RupNum; int State; int Config; int PortState; int ModemState; int portSem; int opens; scalar_t__ statsGather; TYPE_6__ gs; int InUse; scalar_t__ CookMode; int firstOpen; int Mapped; int WaitUntilBooted; TYPE_4__* HostP; } ;
struct TYPE_12__ {scalar_t__ RIOHalted; struct Port** RIOPortp; scalar_t__ RIOFailed; } ;
struct TYPE_11__ {int Flags; TYPE_3__* Mapping; } ;
struct TYPE_10__ {int Flags; } ;
struct TYPE_8__ {int c_cflag; } ;


 int CLOCAL ;
 int EINTR ;
 int EIO ;
 int ENXIO ;
 int HUNDRED_MS ;
 int NOT_INUSE ;
 int OK_TO_SLEEP ;
 int O_NONBLOCK ;
 int PORT_ISOPEN ;
 int RC_RUNNING ;
 int RIOC_FCLOSE ;
 int RIOC_MSVR1_CD ;
 int RIOC_OPEN ;
 scalar_t__ RIODelay (struct Port*,int ) ;
 int RIOParam (struct Port*,int ,int,int ) ;
 int RIOPreemptiveCmd (TYPE_5__*,struct Port*,int ) ;
 int RIO_CARR_ON ;
 int RIO_CLOSING ;
 int RIO_CTSFLOW ;
 int RIO_DEBUG_TTY ;
 scalar_t__ RIO_FAIL ;
 int RIO_LOPEN ;
 int RIO_MOPEN ;
 unsigned int RIO_PORTS ;
 int RIO_RTSFLOW ;
 int RIO_WOPEN ;
 int RTA_BOOTED ;
 int RUN_STATE ;
 int func_enter () ;
 int func_exit () ;
 int gs_init_port (TYPE_6__*) ;
 TYPE_5__* p ;
 int rio_dprintk (int ,char*,...) ;
 unsigned int rio_minor (struct tty_struct*) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

int riotopen(struct tty_struct *tty, struct file *filp)
{
 unsigned int SysPort;
 int repeat_this = 250;
 struct Port *PortP;
 unsigned long flags;
 int retval = 0;

 func_enter();




 tty->driver_data = ((void*)0);

 SysPort = rio_minor(tty);

 if (p->RIOFailed) {
  rio_dprintk(RIO_DEBUG_TTY, "System initialisation failed\n");
  func_exit();
  return -ENXIO;
 }

 rio_dprintk(RIO_DEBUG_TTY, "port open SysPort %d (mapped:%d)\n", SysPort, p->RIOPortp[SysPort]->Mapped);







 if (SysPort >= RIO_PORTS) {
  rio_dprintk(RIO_DEBUG_TTY, "Illegal port number %d\n", SysPort);
  func_exit();
  return -ENXIO;
 }




 PortP = p->RIOPortp[SysPort];
 rio_dprintk(RIO_DEBUG_TTY, "PortP: %p\n", PortP);
 if (!PortP->Mapped) {




  rio_dprintk(RIO_DEBUG_TTY, "port not mapped into system\n");
  func_exit();
  return -ENXIO;
 }

 tty->driver_data = PortP;

 PortP->gs.port.tty = tty;
 PortP->gs.port.count++;

 rio_dprintk(RIO_DEBUG_TTY, "%d bytes in tx buffer\n", PortP->gs.xmit_cnt);

 retval = gs_init_port(&PortP->gs);
 if (retval) {
  PortP->gs.port.count--;
  return -ENXIO;
 }




 if ((PortP->HostP->Flags & RUN_STATE) != RC_RUNNING) {
  rio_dprintk(RIO_DEBUG_TTY, "Host not running\n");
  func_exit();
  return -ENXIO;
 }
 rio_dprintk(RIO_DEBUG_TTY, "Checking if RTA has booted... \n");
 while (!(PortP->HostP->Mapping[PortP->RupNum].Flags & RTA_BOOTED)) {
  if (!PortP->WaitUntilBooted) {
   rio_dprintk(RIO_DEBUG_TTY, "RTA never booted\n");
   func_exit();
   return -ENXIO;
  }





  if (RIODelay(PortP, HUNDRED_MS) == RIO_FAIL) {
   rio_dprintk(RIO_DEBUG_TTY, "RTA_wait_for_boot: EINTR in delay \n");
   func_exit();
   return -EINTR;
  }
  if (repeat_this-- <= 0) {
   rio_dprintk(RIO_DEBUG_TTY, "Waiting for RTA to boot timeout\n");
   func_exit();
   return -EIO;
  }
 }
 rio_dprintk(RIO_DEBUG_TTY, "RTA has been booted\n");
 rio_spin_lock_irqsave(&PortP->portSem, flags);
 if (p->RIOHalted) {
  goto bombout;
 }






 while ((PortP->State & RIO_CLOSING) && !p->RIOHalted) {
  rio_dprintk(RIO_DEBUG_TTY, "Waiting for RIO_CLOSING to go away\n");
  if (repeat_this-- <= 0) {
   rio_dprintk(RIO_DEBUG_TTY, "Waiting for not idle closed broken by signal\n");
   RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);
   retval = -EINTR;
   goto bombout;
  }
  rio_spin_unlock_irqrestore(&PortP->portSem, flags);
  if (RIODelay(PortP, HUNDRED_MS) == RIO_FAIL) {
   rio_spin_lock_irqsave(&PortP->portSem, flags);
   retval = -EINTR;
   goto bombout;
  }
  rio_spin_lock_irqsave(&PortP->portSem, flags);
 }

 if (!PortP->Mapped) {
  rio_dprintk(RIO_DEBUG_TTY, "Port unmapped while closing!\n");
  rio_spin_unlock_irqrestore(&PortP->portSem, flags);
  retval = -ENXIO;
  func_exit();
  return retval;
 }

 if (p->RIOHalted) {
  goto bombout;
 }
 if (!(PortP->State & (RIO_LOPEN | RIO_MOPEN))) {
  PortP->Config &= ~(RIO_CTSFLOW | RIO_RTSFLOW);
 }

 if (!(PortP->firstOpen)) {
  rio_dprintk(RIO_DEBUG_TTY, "First open for this port\n");


  PortP->firstOpen++;
  PortP->CookMode = 0;
  PortP->InUse = NOT_INUSE;




  rio_spin_unlock_irqrestore(&PortP->portSem, flags);





  RIOParam(PortP, RIOC_OPEN, 1, OK_TO_SLEEP);
  rio_spin_lock_irqsave(&PortP->portSem, flags);




  while (!(PortP->PortState & PORT_ISOPEN) && !p->RIOHalted) {
   rio_dprintk(RIO_DEBUG_TTY, "Waiting for PORT_ISOPEN-currently %x\n", PortP->PortState);
   rio_spin_unlock_irqrestore(&PortP->portSem, flags);
   if (RIODelay(PortP, HUNDRED_MS) == RIO_FAIL) {
    rio_dprintk(RIO_DEBUG_TTY, "Waiting for open to finish broken by signal\n");
    RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);
    func_exit();
    return -EINTR;
   }
   rio_spin_lock_irqsave(&PortP->portSem, flags);
  }

  if (p->RIOHalted) {
   retval = -EIO;
        bombout:

   rio_spin_unlock_irqrestore(&PortP->portSem, flags);
   return retval;
  }
  rio_dprintk(RIO_DEBUG_TTY, "PORT_ISOPEN found\n");
 }
 rio_dprintk(RIO_DEBUG_TTY, "Modem - test for carrier\n");





 if ((PortP->gs.port.tty->termios->c_cflag & CLOCAL) ||
   (PortP->ModemState & RIOC_MSVR1_CD)) {
  rio_dprintk(RIO_DEBUG_TTY, "open(%d) Modem carr on\n", SysPort);




  PortP->State |= RIO_CARR_ON;
  wake_up_interruptible(&PortP->gs.port.open_wait);
 } else {




  while (!(PortP->State & RIO_CARR_ON) && !(filp->f_flags & O_NONBLOCK) && !p->RIOHalted) {
    rio_dprintk(RIO_DEBUG_TTY, "open(%d) sleeping for carr on\n", SysPort);



   PortP->State |= RIO_WOPEN;
   rio_spin_unlock_irqrestore(&PortP->portSem, flags);
   if (RIODelay(PortP, HUNDRED_MS) == RIO_FAIL) {
    rio_spin_lock_irqsave(&PortP->portSem, flags);





    rio_dprintk(RIO_DEBUG_TTY, "open(%d) sleeping for carr broken by signal\n", SysPort);
    RIOPreemptiveCmd(p, PortP, RIOC_FCLOSE);



    PortP->State &= ~RIO_WOPEN;
    rio_spin_unlock_irqrestore(&PortP->portSem, flags);
    func_exit();
    return -EINTR;
   }
   rio_spin_lock_irqsave(&PortP->portSem, flags);
  }
  PortP->State &= ~RIO_WOPEN;
 }
 if (p->RIOHalted)
  goto bombout;
 rio_dprintk(RIO_DEBUG_TTY, "Setting RIO_MOPEN\n");
 PortP->State |= RIO_MOPEN;

 if (p->RIOHalted)
  goto bombout;

 rio_dprintk(RIO_DEBUG_TTY, "high level open done\n");




 if (PortP->statsGather)
  PortP->opens++;

 rio_spin_unlock_irqrestore(&PortP->portSem, flags);
 rio_dprintk(RIO_DEBUG_TTY, "Returning from open\n");
 func_exit();
 return 0;
}
