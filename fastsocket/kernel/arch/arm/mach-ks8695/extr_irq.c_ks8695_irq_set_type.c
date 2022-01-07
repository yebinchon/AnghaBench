
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long IOPC_IOEINT0TM ;
 unsigned long IOPC_IOEINT0_MODE (unsigned long) ;
 unsigned long IOPC_IOEINT1TM ;
 unsigned long IOPC_IOEINT1_MODE (unsigned long) ;
 unsigned long IOPC_IOEINT2TM ;
 unsigned long IOPC_IOEINT2_MODE (unsigned long) ;
 unsigned long IOPC_IOEINT3TM ;
 unsigned long IOPC_IOEINT3_MODE (unsigned long) ;
 unsigned long IOPC_TM_EDGE ;
 unsigned long IOPC_TM_FALLING ;
 unsigned long IOPC_TM_HIGH ;
 unsigned long IOPC_TM_LOW ;
 unsigned long IOPC_TM_RISING ;





 scalar_t__ KS8695_GPIO_VA ;
 scalar_t__ KS8695_IOPC ;




 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int ks8695_irq_edge_chip ;
 int ks8695_irq_level_chip ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_handler (unsigned int,int ) ;

__attribute__((used)) static int ks8695_irq_set_type(unsigned int irqno, unsigned int type)
{
 unsigned long ctrl, mode;
 unsigned short level_triggered = 0;

 ctrl = __raw_readl(KS8695_GPIO_VA + KS8695_IOPC);

 switch (type) {
  case 133:
   mode = IOPC_TM_HIGH;
   level_triggered = 1;
   break;
  case 132:
   mode = IOPC_TM_LOW;
   level_triggered = 1;
   break;
  case 134:
   mode = IOPC_TM_RISING;
   break;
  case 135:
   mode = IOPC_TM_FALLING;
   break;
  case 136:
   mode = IOPC_TM_EDGE;
   break;
  default:
   return -EINVAL;
 }

 switch (irqno) {
  case 131:
   ctrl &= ~IOPC_IOEINT0TM;
   ctrl |= IOPC_IOEINT0_MODE(mode);
   break;
  case 130:
   ctrl &= ~IOPC_IOEINT1TM;
   ctrl |= IOPC_IOEINT1_MODE(mode);
   break;
  case 129:
   ctrl &= ~IOPC_IOEINT2TM;
   ctrl |= IOPC_IOEINT2_MODE(mode);
   break;
  case 128:
   ctrl &= ~IOPC_IOEINT3TM;
   ctrl |= IOPC_IOEINT3_MODE(mode);
   break;
  default:
   return -EINVAL;
 }

 if (level_triggered) {
  set_irq_chip(irqno, &ks8695_irq_level_chip);
  set_irq_handler(irqno, handle_level_irq);
 }
 else {
  set_irq_chip(irqno, &ks8695_irq_edge_chip);
  set_irq_handler(irqno, handle_edge_irq);
 }

 __raw_writel(ctrl, KS8695_GPIO_VA + KS8695_IOPC);
 return 0;
}
