
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int ihdlr (struct Scsi_Host*) ;
 unsigned int num_boards ;
 struct Scsi_Host** sh ;
 char* sha ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t do_interrupt_handler(int dummy, void *shap)
{
 struct Scsi_Host *shost;
 unsigned int j;
 unsigned long spin_flags;
 irqreturn_t ret;


 if ((j = (unsigned int)((char *)shap - sha)) >= num_boards)
  return IRQ_NONE;
 shost = sh[j];

 spin_lock_irqsave(shost->host_lock, spin_flags);
 ret = ihdlr(shost);
 spin_unlock_irqrestore(shost->host_lock, spin_flags);
 return ret;
}
