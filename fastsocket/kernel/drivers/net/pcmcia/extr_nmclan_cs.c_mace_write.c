
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bank_lock; } ;
typedef TYPE_1__ mace_private ;


 int AM2150_MACE_BASE ;
 int MACEBANK (int) ;
 int outb (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mace_write(mace_private *lp, unsigned int ioaddr, int reg,
         int data)
{
  unsigned long flags;

  switch (reg >> 4) {
    case 0:
      outb(data & 0xFF, ioaddr + AM2150_MACE_BASE + reg);
      break;
    case 1:
      spin_lock_irqsave(&lp->bank_lock, flags);
      MACEBANK(1);
      outb(data & 0xFF, ioaddr + AM2150_MACE_BASE + (reg & 0x0F));
      MACEBANK(0);
      spin_unlock_irqrestore(&lp->bank_lock, flags);
      break;
  }
}
