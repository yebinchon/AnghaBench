
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int IRQ_KEYBOARDRX ;
 int IRQ_KEYBOARDTX ;
 int free_irq (int ,struct serio*) ;

__attribute__((used)) static void rpckbd_close(struct serio *port)
{
 free_irq(IRQ_KEYBOARDRX, port);
 free_irq(IRQ_KEYBOARDTX, port);
}
