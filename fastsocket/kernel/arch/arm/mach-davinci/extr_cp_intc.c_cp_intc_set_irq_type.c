
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIT_MASK (unsigned int) ;
 unsigned int BIT_WORD (unsigned int) ;
 int CP_INTC_SYS_POLARITY (unsigned int) ;
 int CP_INTC_SYS_TYPE (unsigned int) ;
 int EINVAL ;




 unsigned int cp_intc_read (int ) ;
 int cp_intc_write (unsigned int,int ) ;

__attribute__((used)) static int cp_intc_set_irq_type(unsigned int irq, unsigned int flow_type)
{
 unsigned reg = BIT_WORD(irq);
 unsigned mask = BIT_MASK(irq);
 unsigned polarity = cp_intc_read(CP_INTC_SYS_POLARITY(reg));
 unsigned type = cp_intc_read(CP_INTC_SYS_TYPE(reg));

 switch (flow_type) {
 case 130:
  polarity |= mask;
  type |= mask;
  break;
 case 131:
  polarity &= ~mask;
  type |= mask;
  break;
 case 129:
  polarity |= mask;
  type &= ~mask;
  break;
 case 128:
  polarity &= ~mask;
  type &= ~mask;
  break;
 default:
  return -EINVAL;
 }

 cp_intc_write(polarity, CP_INTC_SYS_POLARITY(reg));
 cp_intc_write(type, CP_INTC_SYS_TYPE(reg));

 return 0;
}
