
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask2; int mask1; } ;


 int MENELAUS_INT_MASK1 ;
 int MENELAUS_INT_MASK2 ;
 int menelaus_write_reg (int ,int) ;
 TYPE_1__* the_menelaus ;

__attribute__((used)) static int menelaus_disable_irq(int irq)
{
 if (irq > 7) {
  irq -= 8;
  the_menelaus->mask2 |= (1 << irq);
  return menelaus_write_reg(MENELAUS_INT_MASK2,
    the_menelaus->mask2);
 } else {
  the_menelaus->mask1 |= (1 << irq);
  return menelaus_write_reg(MENELAUS_INT_MASK1,
    the_menelaus->mask1);
 }
}
