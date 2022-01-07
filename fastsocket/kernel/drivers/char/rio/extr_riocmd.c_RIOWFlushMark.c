
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Port {int portSem; int MagicFlags; int WflushFlag; } ;
struct CmdBlk {int dummy; } ;


 int MAGIC_FLUSH ;
 int RIOUnUse (unsigned long,struct CmdBlk*) ;
 int rio_spin_lock_irqsave (int *,unsigned long) ;
 int rio_spin_unlock_irqrestore (int *,unsigned long) ;

int RIOWFlushMark(unsigned long iPortP, struct CmdBlk *CmdBlkP)
{
 struct Port *PortP = (struct Port *) iPortP;
 unsigned long flags;

 rio_spin_lock_irqsave(&PortP->portSem, flags);
 PortP->WflushFlag++;
 PortP->MagicFlags |= MAGIC_FLUSH;
 rio_spin_unlock_irqrestore(&PortP->portSem, flags);
 return RIOUnUse(iPortP, CmdBlkP);
}
