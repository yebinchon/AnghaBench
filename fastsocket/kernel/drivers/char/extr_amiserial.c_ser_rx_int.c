
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_struct {int last_active; int tty; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct async_struct* IRQ_ports ;
 int jiffies ;
 int printk (char*) ;
 int receive_chars (struct async_struct*) ;

__attribute__((used)) static irqreturn_t ser_rx_int(int irq, void *dev_id)
{
 struct async_struct * info;





 info = IRQ_ports;
 if (!info || !info->tty)
  return IRQ_NONE;

 receive_chars(info);
 info->last_active = jiffies;



 return IRQ_HANDLED;
}
