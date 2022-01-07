
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int line; int rx_ctrl; int * ioport; } ;


 int E100_RTS_MASK ;
 size_t REG_REC_CTRL ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static inline void
e100_rts(struct e100_serial *info, int set)
{

 unsigned long flags;
 local_irq_save(flags);
 info->rx_ctrl &= ~E100_RTS_MASK;
 info->rx_ctrl |= (set ? 0 : E100_RTS_MASK);
 info->ioport[REG_REC_CTRL] = info->rx_ctrl;
 local_irq_restore(flags);




}
