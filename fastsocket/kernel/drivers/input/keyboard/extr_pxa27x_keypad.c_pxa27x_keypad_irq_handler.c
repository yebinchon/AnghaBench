
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KPC ;
 unsigned long KPC_DI ;
 unsigned long KPC_MI ;
 unsigned long keypad_readl (int ) ;
 int pxa27x_keypad_scan_direct (struct pxa27x_keypad*) ;
 int pxa27x_keypad_scan_matrix (struct pxa27x_keypad*) ;

__attribute__((used)) static irqreturn_t pxa27x_keypad_irq_handler(int irq, void *dev_id)
{
 struct pxa27x_keypad *keypad = dev_id;
 unsigned long kpc = keypad_readl(KPC);

 if (kpc & KPC_DI)
  pxa27x_keypad_scan_direct(keypad);

 if (kpc & KPC_MI)
  pxa27x_keypad_scan_matrix(keypad);

 return IRQ_HANDLED;
}
