
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {int dummy; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int initio_isr (struct initio_host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t i91u_intr(int irqno, void *dev_id)
{
 struct Scsi_Host *dev = dev_id;
 unsigned long flags;
 int r;

 spin_lock_irqsave(dev->host_lock, flags);
 r = initio_isr((struct initio_host *)dev->hostdata);
 spin_unlock_irqrestore(dev->host_lock, flags);
 if (r)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
