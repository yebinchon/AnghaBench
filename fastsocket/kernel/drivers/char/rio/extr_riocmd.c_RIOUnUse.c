
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Port {scalar_t__ InUse; int portSem; TYPE_2__* HostP; } ;
struct CmdBlk {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ParmMapP; } ;
struct TYPE_3__ {int tx_intr; } ;


 scalar_t__ NOT_INUSE ;
 int RIO_DEBUG_CMD ;
 int rio_dprintk (int ,char*) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,int *) ;

int RIOUnUse(unsigned long iPortP, struct CmdBlk *CmdBlkP)
{
 struct Port *PortP = (struct Port *) iPortP;
 unsigned long flags;

 rio_spin_lock_irqsave(&PortP->portSem, flags);

 rio_dprintk(RIO_DEBUG_CMD, "Decrement in use count for port\n");

 if (PortP->InUse) {
  if (--PortP->InUse != NOT_INUSE) {
   rio_spin_unlock_irqrestore(&PortP->portSem, flags);
   return 0;
  }
 }
 writew(1, &PortP->HostP->ParmMapP->tx_intr);



 rio_spin_unlock_irqrestore(&PortP->portSem, flags);
 return 0;
}
