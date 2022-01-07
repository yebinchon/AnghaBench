
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {unsigned int status; } ;
struct eic {unsigned int first_irq; } ;


 int EDGE ;
 int EINVAL ;
 unsigned int IRQ_LEVEL ;




 unsigned int IRQ_TYPE_NONE ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int LEVEL ;
 int MODE ;
 int __set_irq_handler_unlocked (unsigned int,int ) ;
 int eic_readl (struct eic*,int ) ;
 int eic_writel (struct eic*,int ,int) ;
 struct eic* get_irq_chip_data (unsigned int) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct irq_desc* irq_desc ;

__attribute__((used)) static int eic_set_irq_type(unsigned int irq, unsigned int flow_type)
{
 struct eic *eic = get_irq_chip_data(irq);
 struct irq_desc *desc;
 unsigned int i = irq - eic->first_irq;
 u32 mode, edge, level;
 int ret = 0;

 flow_type &= IRQ_TYPE_SENSE_MASK;
 if (flow_type == IRQ_TYPE_NONE)
  flow_type = 128;

 desc = &irq_desc[irq];

 mode = eic_readl(eic, MODE);
 edge = eic_readl(eic, EDGE);
 level = eic_readl(eic, LEVEL);

 switch (flow_type) {
 case 128:
  mode |= 1 << i;
  level &= ~(1 << i);
  break;
 case 129:
  mode |= 1 << i;
  level |= 1 << i;
  break;
 case 130:
  mode &= ~(1 << i);
  edge |= 1 << i;
  break;
 case 131:
  mode &= ~(1 << i);
  edge &= ~(1 << i);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret == 0) {
  eic_writel(eic, MODE, mode);
  eic_writel(eic, EDGE, edge);
  eic_writel(eic, LEVEL, level);

  if (flow_type & (128 | 129)) {
   flow_type |= IRQ_LEVEL;
   __set_irq_handler_unlocked(irq, handle_level_irq);
  } else
   __set_irq_handler_unlocked(irq, handle_edge_irq);
  desc->status &= ~(IRQ_TYPE_SENSE_MASK | IRQ_LEVEL);
  desc->status |= flow_type;
 }

 return ret;
}
