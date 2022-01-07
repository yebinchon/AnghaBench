
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int KEYBOARD_UNLOCK_REG ;
 int KEY_IRQ_ENABLE_REG ;
 int Q40_IRQ_KEYBOARD ;
 int free_irq (int ,int *) ;
 int master_outb (int,int ) ;
 int q40kbd_flush () ;

__attribute__((used)) static void q40kbd_close(struct serio *port)
{
 master_outb(0, KEY_IRQ_ENABLE_REG);
 master_outb(-1, KEYBOARD_UNLOCK_REG);
 free_irq(Q40_IRQ_KEYBOARD, ((void*)0));

 q40kbd_flush();
}
