
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int sglen; int sgmax; scalar_t__ sgidx; scalar_t__ mode; } ;
struct initio_host {int semaph; int semaph_lock; scalar_t__ addr; } ;


 scalar_t__ TUL_Mask ;
 int initio_append_pend_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tulip_main (struct initio_host*) ;

__attribute__((used)) static void initio_exec_scb(struct initio_host * host, struct scsi_ctrl_blk * scb)
{
 unsigned long flags;

 scb->mode = 0;

 scb->sgidx = 0;
 scb->sgmax = scb->sglen;

 spin_lock_irqsave(&host->semaph_lock, flags);

 initio_append_pend_scb(host, scb);


 if (host->semaph == 1) {

  outb(0x1F, host->addr + TUL_Mask);
  host->semaph = 0;
  spin_unlock_irqrestore(&host->semaph_lock, flags);

  tulip_main(host);

  spin_lock_irqsave(&host->semaph_lock, flags);
  host->semaph = 1;
  outb(0x0F, host->addr + TUL_Mask);
 }
 spin_unlock_irqrestore(&host->semaph_lock, flags);
 return;
}
