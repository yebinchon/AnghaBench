
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct async_struct {int last_active; int tty; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int serdatr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct async_struct* IRQ_ports ;
 int SDR_TBE ;
 TYPE_1__ custom ;
 int jiffies ;
 int printk (char*) ;
 int transmit_chars (struct async_struct*) ;

__attribute__((used)) static irqreturn_t ser_tx_int(int irq, void *dev_id)
{
 struct async_struct * info;

 if (custom.serdatr & SDR_TBE) {




   info = IRQ_ports;
   if (!info || !info->tty)
  return IRQ_NONE;

   transmit_chars(info);
   info->last_active = jiffies;



 }
 return IRQ_HANDLED;
}
