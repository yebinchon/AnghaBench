
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; } ;


 int IM_ATTN_REG (struct Scsi_Host*) ;
 int IM_BUSY ;
 int IM_CMD_REG (struct Scsi_Host*) ;
 int IM_STAT_REG (struct Scsi_Host*) ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;
 int outl (unsigned long,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void issue_cmd(struct Scsi_Host *shpnt, unsigned long cmd_reg,
        unsigned char attn_reg)
{
 unsigned long flags;

 while (1) {
  spin_lock_irqsave(shpnt->host_lock, flags);
  if (!(inb(IM_STAT_REG(shpnt)) & IM_BUSY))
   break;
  spin_unlock_irqrestore(shpnt->host_lock, flags);
 }

 outl(cmd_reg, IM_CMD_REG(shpnt));
 outb(attn_reg, IM_ATTN_REG(shpnt));
 spin_unlock_irqrestore(shpnt->host_lock, flags);
}
