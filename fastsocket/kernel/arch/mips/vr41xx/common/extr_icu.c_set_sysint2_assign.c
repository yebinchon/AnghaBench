
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 int EINVAL ;
 int INTASSIGN2 ;
 int INTASSIGN3 ;
 int INTASSIGN_MASK ;
 unsigned int SYSINT2_IRQ_TO_PIN (unsigned int) ;
 int icu1_read (int ) ;
 int icu1_write (int ,int) ;
 struct irq_desc* irq_desc ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned char* sysint2_assign ;

__attribute__((used)) static inline int set_sysint2_assign(unsigned int irq, unsigned char assign)
{
 struct irq_desc *desc = irq_desc + irq;
 uint16_t intassign2, intassign3;
 unsigned int pin;

 pin = SYSINT2_IRQ_TO_PIN(irq);

 spin_lock_irq(&desc->lock);

 intassign2 = icu1_read(INTASSIGN2);
 intassign3 = icu1_read(INTASSIGN3);

 switch (pin) {
 case 0:
  intassign2 &= ~INTASSIGN_MASK;
  intassign2 |= (uint16_t)assign;
  break;
 case 1:
  intassign2 &= ~(INTASSIGN_MASK << 3);
  intassign2 |= (uint16_t)assign << 3;
  break;
 case 3:
  intassign2 &= ~(INTASSIGN_MASK << 6);
  intassign2 |= (uint16_t)assign << 6;
  break;
 case 4:
  intassign2 &= ~(INTASSIGN_MASK << 9);
  intassign2 |= (uint16_t)assign << 9;
  break;
 case 5:
  intassign2 &= ~(INTASSIGN_MASK << 12);
  intassign2 |= (uint16_t)assign << 12;
  break;
 case 6:
  intassign3 &= ~INTASSIGN_MASK;
  intassign3 |= (uint16_t)assign;
  break;
 case 7:
  intassign3 &= ~(INTASSIGN_MASK << 3);
  intassign3 |= (uint16_t)assign << 3;
  break;
 case 8:
  intassign3 &= ~(INTASSIGN_MASK << 6);
  intassign3 |= (uint16_t)assign << 6;
  break;
 case 9:
  intassign3 &= ~(INTASSIGN_MASK << 9);
  intassign3 |= (uint16_t)assign << 9;
  break;
 case 10:
  intassign3 &= ~(INTASSIGN_MASK << 12);
  intassign3 |= (uint16_t)assign << 12;
  break;
 default:
  spin_unlock_irq(&desc->lock);
  return -EINVAL;
 }

 sysint2_assign[pin] = assign;
 icu1_write(INTASSIGN2, intassign2);
 icu1_write(INTASSIGN3, intassign3);

 spin_unlock_irq(&desc->lock);

 return 0;
}
